import 'package:flutter/cupertino.dart';
import 'package:mobx/mobx.dart';
import 'package:mobx_base/models/todo.dart';

part 'list_controller.g.dart';

class ListController = ListControllerBase with _$ListController;

abstract class ListControllerBase with Store {

  final TextEditingController addTodoController = TextEditingController();

  @observable
  String listItem = '';

  @action
  void setListItem(String v) => listItem = v;

  @computed
  bool get isFormValid => listItem.isNotEmpty;

  @computed
  VoidCallback? get addTodoPressed => isFormValid ? addTodo : null;

  ObservableList<Todo> todoList = ObservableList<Todo>();

  @action
  void addTodo() {
    todoList.insert(0, Todo(listItem));

    addTodoController.clear();
    listItem = '';

  }
}
