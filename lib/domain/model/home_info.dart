import 'package:error_handling_demo/domain/model/todo_list.dart';
import 'package:error_handling_demo/domain/model/user_profile.dart';

class HomeInfo {
  final UserProfile userProfile;
  final ToDoList toDoList;
  String someExtraFieldManipulatedFromTheUseCase;

  HomeInfo(this.userProfile, this.toDoList);
}
