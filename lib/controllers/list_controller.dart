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

  VoidCallback? get addTodoPressed => isFormValid ? addTodo : null;

  void addTodo() {
    print(listItem);
  }
}
