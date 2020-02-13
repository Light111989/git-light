
import 'package:etcheckinapp/module/user.dart';
import 'package:etcheckinapp/screens/homeScreen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class BtnLogin extends StatefulWidget {
  @override
  _BtnLoginState createState() => _BtnLoginState();
}

class _BtnLoginState extends State<BtnLogin> {
  @override
  Widget build(BuildContext context) {
    final counterModel = Provider.of<UserModel>(context);
    return Container(
      child: new RaisedButton(
        color: Colors.white,
        onPressed: () {
          print(counterModel.password);
          print(counterModel.username);
          Navigator.pushReplacementNamed(context, HomeScreen.routeName);
        },
        child: const Text('Login',
            style: TextStyle(fontSize: 20, color: Colors.cyan)),
      ),
    );
  }
}
