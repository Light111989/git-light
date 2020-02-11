import 'package:etcheckinapp/Screens/homeScreen.dart';
import 'package:flutter/material.dart';

class BtnLogin extends StatefulWidget {
  @override
  _BtnLoginState createState() => _BtnLoginState();
}

class _BtnLoginState extends State<BtnLogin> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: new RaisedButton(
        color: Colors.white,
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => App()),
          );
        },
        child: const Text('Login',
            style: TextStyle(fontSize: 20, color: Colors.cyan)),
      ),
    );
  }
}
