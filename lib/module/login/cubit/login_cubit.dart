import 'package:app_iti/module/login/cubit/login_states.dart';
import 'package:app_iti/view/api_learn.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginCubit extends Cubit<LoginStates> {
  LoginCubit() : super(LoginIntialState());

  static LoginCubit get(context) => BlocProvider.of(context);

  Dio dio = Dio();

  void login({
    required String username,
    required String password,
    required BuildContext context,
  }) async {
    emit(LoginLoadingState());

    try {
      Response response = await dio.post(
        "https://fakestoreapi.com/auth/login",
        data: {"username": username, "password": password},
      );

      if (response.statusCode == 200 || response.statusCode == 201) {
        String? token = response.data['token'];

        // save token to shared pref
        SharedPreferences prefs = await SharedPreferences.getInstance();
        await prefs.setString("token", token!);

        

        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => ProductScreen()),
        );

        emit(LoginSuccessState(token));
      } else {
        emit(LoginErrorState("Login Faild"));
      }
    } catch (error) {
      print(error.toString());

      emit(LoginErrorState(error.toString()));

      // ScaffoldMessenger.of(
      //   context,
      // ).showSnackBar(SnackBar(content: Text("Login Faild")));
    }
  }
}
