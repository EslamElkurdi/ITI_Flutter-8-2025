import 'package:app_iti/module/login/cubit/login_cubit.dart';
import 'package:app_iti/module/login/cubit/login_states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});

  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LoginCubit(),
      child: BlocConsumer<LoginCubit, LoginStates>(
        builder: (context, state) {
          if (state is LoginLoadingState) {
            return Scaffold(

              body: Center(
                child: CircularProgressIndicator(),
              ),

            );
          }

          if(state is LoginErrorState){
            return Scaffold(

              body: Center(
                child: Text(state.error),
              ),

            );
          }

          return Scaffold(
            appBar: AppBar(title: Text("Login Screen")),
            body: Padding(
              padding: EdgeInsets.all(16),

              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextField(
                    controller: _usernameController,
                    decoration: InputDecoration(
                      labelText: "Username",
                      border: OutlineInputBorder(),
                    ),
                  ),

                  SizedBox(height: 20),

                  TextField(
                    controller: _passwordController,
                    decoration: InputDecoration(
                      labelText: "Password",
                      border: OutlineInputBorder(),
                    ),
                    obscureText: true,
                  ),

                  SizedBox(height: 50),

                  ElevatedButton(
                    onPressed: () {
                      LoginCubit.get(context).login(
                        username: _usernameController.text,
                        password: _passwordController.text,
                        context: context,
                      );
                    },
                    child: Text("Login"),
                  ),
                ],
              ),
            ),
          );
        },
        listener: (context, state) {
          if (state is LoginSuccessState) {
            ScaffoldMessenger.of(
              context,
            ).showSnackBar(SnackBar(content: Text("Login Successful")));
          }

          if (state is LoginErrorState) {
            ScaffoldMessenger.of(
              context,
            ).showSnackBar(SnackBar(content: Text(state.error)));
          }
        },
      ),
    );
  }
}
