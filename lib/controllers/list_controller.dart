import 'package:flutter/cupertino.dart';
import 'package:mobx/mobx.dart';

part 'list_controller.g.dart';

class ListController = ListControllerBase with _$ListController;

abstract class ListControllerBase with Store {
  @observable
  String listItem = '';

  @action
  void setListItem(String v) => listItem = v;

  @computed
  bool get isFormValid => listItem.isNotEmpty;

  @computed
  VoidCallback? get addTodoPressed => isFormValid ? addTodo : null;

  ObservableList<String> todoList = ObservableList<String>();

  @action
  void addTodo() {
    todoList.insert(0, listItem);
  }
}
