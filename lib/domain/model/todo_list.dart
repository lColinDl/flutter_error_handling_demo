
class ToDoList {
  final List<ToDo> todos;

  ToDoList(List<ToDo> todos) : todos = todos ?? [];
}


class ToDo {
  String todo;
  bool done;

  ToDo(this.todo, [this.done = false]);
}