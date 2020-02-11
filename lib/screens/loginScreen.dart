import 'package:etcheckinapp/Widget/login/loginButton.dart';
import 'package:etcheckinapp/Widget/login/imgLogo.dart';
import 'package:etcheckinapp/Widget/login/passWordField.dart';
import 'package:etcheckinapp/Widget/login/userNameField.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Stack(
        children: <Widget>[
          Align(
            alignment: Alignment.bottomRight,
            widthFactor: 0.5,
            heightFactor: 0.5,
            child:Material(
              color: Colors.cyan,
              borderRadius:
                  BorderRadius.only(bottomRight: Radius.circular(200)),
              child: Container(
                width: 400,
                height: 400,
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[ImgLogo(), TxtUser(), TxtPass(), BtnLogin()],
          ),
        ],
      ),
    ));
  }
}
