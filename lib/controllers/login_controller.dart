import 'package:mobx/mobx.dart';

part 'login_controller.g.dart';

class LoginController = LoginControllerBase with _$LoginController;

abstract class LoginControllerBase with Store {
  LoginControllerBase() {
    autorun((_) {
      print(email);
      print(password);
    });
  }

  @observable
  String email = '';

  @action
  void setEmail(String v) => email = v;

  @observable
  String password = '';

  @action
  void setPassword(String v) => email = v;

  @observable
  bool passwordVisible = false;

  @action
  void togglePasswordVisible() => passwordVisible = !passwordVisible;
}
