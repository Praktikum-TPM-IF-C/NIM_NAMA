import 'package:flutter/material.dart';
import 'package:pertemuan3/page/homescreen.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String username = "";
  String password = "";
  bool isLoginSuccess = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Login Page'),
        ),
        body: Column(
          children: [
            _usernameField(),
            _passwordField(),
            _loginButton(context),
          ],
        ),
      ),
    );
  }

  Widget _usernameField() {
    return Container(
      child: TextFormField(
        decoration: InputDecoration(hintText: 'Username'),
        onChanged: (value) {
          username = value;
        },
      ),
    );
  }

  Widget _passwordField() {
    return Container(
      child: TextFormField(
        obscureText: true,
        decoration: InputDecoration(hintText: 'Password'),
        onChanged: (value) {
          password = value;
        },
      ),
    );
  }

  Widget _loginButton(BuildContext context) {
    return Container(
      child: ElevatedButton(
        onPressed: () {
          String text = "";
          if (username == "admin" && password == "admin12345" && password.length>8) {
            setState(() {
              text = "Login Success";
              isLoginSuccess = true;
            });
          } else {
            setState(() {
              text = "Login Failed";
              isLoginSuccess = false;
            });
          }
          SnackBar snackBar = SnackBar(
            content: Text(text),
          );
          ScaffoldMessenger.of(context).showSnackBar(snackBar);
          if(isLoginSuccess){
            Navigator.pushReplacement(context,
                MaterialPageRoute(builder: (context){
              return HomeScreen();
            }));
          }
        },
        child: Text('Login'),
      ),
    );
  }
}
