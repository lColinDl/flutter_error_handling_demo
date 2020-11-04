import 'package:error_handling_demo/domain/model/localized_messages.dart';
import 'package:error_handling_demo/domain/model/todo_list.dart';
import 'package:error_handling_demo/domain/model/user_profile.dart';
import 'package:error_handling_demo/domain/use_case/get_home_info_use_case.dart';
import 'package:error_handling_demo/domain/use_case/register_use_case.dart';
import 'package:error_handling_demo/ui/helper/view_model.dart';
import 'package:flutter/material.dart';

class HomePageViewModel extends ViewModel {
  final GetHomeInfoUseCase _getHomeInfoUseCase;
  final RegisterUseCase _registerUseCase;

  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();

  UserProfile userProfile;
  ToDoList toDoList;
  String errorMessage;

  bool get isUserProfileAvailable => userProfile != null;

  bool get isToDoListAvailable => toDoList != null;

  HomePageViewModel(
    this._getHomeInfoUseCase,
    this._registerUseCase,
  );

  Future<void> onInit() async {
    await _loadData();
  }

  Future<void> _loadData() async {
    setLoading();

    try {
      final info = await _getHomeInfoUseCase.execute();
      userProfile = info.userProfile;
      toDoList = info.toDoList;
      setIdle();
    } catch (e) {
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
      userProfile = await _registerUseCase.execute('Example', 'Example');
      update();
    } catch (e) {
      //Show the error to the user

      if (e is RegisterException) {
        //Do something with the specific exception, if you want to.
        //Can be done in an "on RegisterException catch(e) {}" block as well
        _showErrorSnackBar(MessageFactory.getMessage(e));
      } else {
        _showErrorSnackBar(MessageFactory.getMessage(e));
      }
    }
  }

  //I know this is ugly. This is just Details. Ignore it.
  void _showErrorSnackBar(String msg) {
    scaffoldKey.currentState.showSnackBar(SnackBar(
      content: Text(msg),
    ));
  }
}
