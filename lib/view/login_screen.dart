import 'package:app_iti/view/api_learn.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _dio = Dio();
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  bool isLoading = false;
  String? token;

  Future<void> login() async {
    setState(() {
      isLoading = true;
    });

    try {
      Response response = await _dio.post(
        "https://fakestoreapi.com/auth/login",
        data: {
          "username": _usernameController.text,
          "password": _passwordController.text,
        },
      );

      token = response.data['token'];

      // save token to shared pref
      SharedPreferences prefs = await SharedPreferences.getInstance();

      await prefs.setString("token", token!);

      setState(() {
        
        isLoading = false;
      });

      ScaffoldMessenger.of(
        context,
      ).showSnackBar(SnackBar(content: Text("Login Successful")));

      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => ProductScreen(),));
    } catch (error) {
      setState(() {
        isLoading = false;
      });

      print(error.toString());

      ScaffoldMessenger.of(
        context,
      ).showSnackBar(SnackBar(content: Text("Login Faild")));
    }
  }

  @override
  Widget build(BuildContext context) {
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

            isLoading
                ? CircularProgressIndicator()
                : ElevatedButton(onPressed: login, child: Text("Login")),

            SizedBox(height: 20),
            if (token != null)
              Text(
                "Token: $token",
                style: TextStyle(color: Colors.green),
                textAlign: TextAlign.center,
              ),
          ],
        ),
      ),
    );
  }
}
