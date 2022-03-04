// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$ListController on ListControllerBase, Store {
  Computed<bool>? _$isFormValidComputed;

  @override
  bool get isFormValid =>
      (_$isFormValidComputed ??= Computed<bool>(() => super.isFormValid,
              name: 'ListControllerBase.isFormValid'))
          .value;
  Computed<VoidCallback?>? _$addTodoPressedComputed;

  @override
  VoidCallback? get addTodoPressed => (_$addTodoPressedComputed ??=
          Computed<VoidCallback?>(() => super.addTodoPressed,
              name: 'ListControllerBase.addTodoPressed'))
      .value;

  final _$listItemAtom = Atom(name: 'ListControllerBase.listItem');

  @override
  String get listItem {
    _$listItemAtom.reportRead();
    return super.listItem;
  }

  @override
  set listItem(String value) {
    _$listItemAtom.reportWrite(value, super.listItem, () {
      super.listItem = value;
    });
  }

  final _$ListControllerBaseActionController =
      ActionController(name: 'ListControllerBase');

  @override
  void setListItem(String v) {
    final _$actionInfo = _$ListControllerBaseActionController.startAction(
        name: 'ListControllerBase.setListItem');
    try {
      return super.setListItem(v);
    } finally {
      _$ListControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void addTodo() {
    final _$actionInfo = _$ListControllerBaseActionController.startAction(
        name: 'ListControllerBase.addTodo');
    try {
      return super.addTodo();
    } finally {
      _$ListControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
listItem: ${listItem},
isFormValid: ${isFormValid},
addTodoPressed: ${addTodoPressed}
    ''';
  }
}
