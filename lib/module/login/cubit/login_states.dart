abstract class LoginStates {}

class LoginIntialState extends LoginStates {

}

class LoginLoadingState extends LoginStates {}

class LoginSuccessState extends LoginStates {
  final String token;
  // final List<dynamic> userData;
  LoginSuccessState(this.token);
}

class LoginErrorState extends LoginStates {
  final String error;
  LoginErrorState(this.error);
}