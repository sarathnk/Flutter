import 'package:flutter/material.dart';
import 'package:fms/screens/login_ui.dart';

class Login extends StatelessWidget {
  LoginUI loginUI;
  final String title = "Please login";

  Login() {
    loginUI = new LoginUI(onSubmit: onSubmit);
  }

  void onSubmit() {
    print("Login");
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new MaterialApp(
      title: "Fms App",
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text(title),
        ),
        body: loginUI,
      ),
    );
  }
}
