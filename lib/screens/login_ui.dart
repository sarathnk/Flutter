import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';

class LoginUI extends StatelessWidget {
  const LoginUI({
    Key key,
    @required this.onSubmit,
  })
      : super(key: key);

  static final TextEditingController _email = new TextEditingController();
  static final TextEditingController _password = new TextEditingController();

  String get email => _email.text;

  String get password => _password.text;

  final VoidCallback onSubmit;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Column(
      children: <Widget>[
        new TextField(
          controller: _email,
          decoration: new InputDecoration(hintText: "Enter email"),
        ),
        new TextField(
          controller: _password,
          decoration: new InputDecoration(hintText: "Enter password"),
        ),
        new RaisedButton(child: new Text("Login"), onPressed: onSubmit)
      ],
    );
  }
}
