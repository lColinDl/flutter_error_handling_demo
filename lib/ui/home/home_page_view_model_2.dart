import 'package:error_handling_demo/domain/model/localized_messages.dart';
import 'package:error_handling_demo/domain/model/todo_list.dart';
import 'package:error_handling_demo/domain/model/user_profile.dart';
import 'package:error_handling_demo/domain/use_case/get_home_info_use_case_2.dart';
import 'package:error_handling_demo/domain/use_case/register_use_case_2.dart';
import 'package:error_handling_demo/ui/helper/view_model.dart';
import 'package:flutter/material.dart';

///That's the alternative with the Result Object approach
class HomePageViewModel2 extends ViewModel {
  final GetHomeInfoUseCase2 _getHomeInfoResultUseCase;
  final RegisterUseCase2 _registerWithResultUseCase;

  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();

  UserProfile userProfile;
  ToDoList toDoList;
  String errorMessage;

  bool get isUserProfileAvailable => userProfile != null;

  bool get isToDoListAvailable => toDoList != null;

  HomePageViewModel2(
    this._getHomeInfoResultUseCase,
    this._registerWithResultUseCase,
  );

  Future<void> onInit() async {
    await _loadData();
  }

  Future<void> _loadData() async {
    setLoading();

    try {
      final result = await _getHomeInfoResultUseCase.execute();

      result.when(
        success: (info) {
          userProfile = info.userProfile;
          toDoList = info.toDoList;
          setIdle();
        },
        error: (error) {
          //Now I have this redundant (and ugly) when here. + my catch
          errorMessage = MessageFactory.getMessage(error);
          setError();
        },
      );
    } catch (e) {
      // We need the catch block probably anyways, just to be safe.
      // Even if we try to catch and map all exceptions inside the repositories.
      // There could be exceptions happening somewhere that we were not aware of.
      errorMessage = MessageFactory.getMessage(e);
      setError();
    }
  }

  onToDoValueChanged(ToDo item, bool value) {
    item.done = value;
    update();
  }

  void onRegisterClicked() {
    _register();
  }

  Future<void> _register() async {
    try {
      final result = await _registerWithResultUseCase.execute('Example', 'Example');

      result.when(success: (profile) {
        userProfile = profile;
      }, passwordToShort: () {
        //Show the error to the user, as in the cases below.
        _showErrorSnackBar('Password too short');
      }, passwordInsecure: () {
        //But I have to specify all three error cases.
        // If I want to combine them, I will have to create a method for it.
        _showErrorSnackBar('Password insecure');
      }, someOtherError: (e) {
        //This would be a NetworkException is this example,
        //no specific exception to this use case.
        _showErrorSnackBar(MessageFactory.getMessage(e));
      });

      update();
    } catch (e) {
      //We need the catch block probably anyways (see explanation above).
      _showErrorSnackBar(MessageFactory.getMessage(e));
    }
  }

  //I know this is ugly. This is just Details. Ignore it.
  void _showErrorSnackBar(String msg) {
    scaffoldKey.currentState.showSnackBar(SnackBar(
      content: Text(msg),
    ));
  }
}
