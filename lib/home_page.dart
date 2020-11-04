import 'package:error_handling_demo/di.dart';
import 'package:error_handling_demo/get_home_info_result_use_case.dart';
import 'package:error_handling_demo/get_home_info_use_case.dart';
import 'package:error_handling_demo/localized_messages.dart';
import 'package:error_handling_demo/register_use_case.dart';
import 'package:error_handling_demo/register_with_result_use_case.dart';
import 'package:error_handling_demo/todo_list.dart';
import 'package:error_handling_demo/user_profile.dart';
import 'package:error_handling_demo/view_model.dart';
import 'package:error_handling_demo/view_state_builder.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<HomePageViewModel>(
      create: (_) => DI.get()..onInit(),
      child: _HomePage(),
    );
  }
}

class _HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final HomePageViewModel viewModel = context.watch();
    return Scaffold(
      key: viewModel.scaffoldKey,
      appBar: AppBar(
        title: Text('Error Handling Example'),
        actions: [
          FlatButton(
            child: Text('Register'),
            onPressed: viewModel.onRegisterClicked,
          )
        ],
      ),
      body: ViewStateBuilder(
        state: viewModel.state,
        loadingBuilder: (_) => Container(),
        builder: buildContent,
        errorMessage: viewModel.errorMessage,
      ),
    );
  }

  Widget buildContent(BuildContext context) {
    final HomePageViewModel viewModel = context.watch();

    return Column(
      children: [
        Text(
          viewModel.userProfile.name,
          style: Theme.of(context).textTheme.headline5,
        ),
        Expanded(
          child: ListView.builder(
            itemCount: viewModel.toDoList.todos.length,
            itemBuilder: (context, pos) {
              final item = viewModel.toDoList.todos[pos];
              return ListTile(
                title: Text(item.todo),
                trailing: Checkbox(
                  value: item.done,
                  onChanged: (value) => viewModel.onToDoValueChanged(item, value),
                ),
              );
            },
          ),
        )
      ],
    );
  }
}

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

///That's the alternative with the Result Object approach
class HomePageResultViewModel extends ViewModel {
  final GetHomeInfoResultUseCase _getHomeInfoResultUseCase;
  final RegisterWithResultUseCase _registerWithResultUseCase;

  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();

  UserProfile userProfile;
  ToDoList toDoList;
  String errorMessage;

  bool get isUserProfileAvailable => userProfile != null;

  bool get isToDoListAvailable => toDoList != null;

  HomePageResultViewModel(
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
