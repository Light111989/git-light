import 'package:etcheckinapp/module/user.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
class TxtPass extends StatelessWidget {
  //final myController = TextEditingController();
  @override
  Widget build(BuildContext context) {
     final counterModel = Provider.of<UserModel>(context);
    return new Container(
        margin: EdgeInsets.only(left: 30.0, right: 30.0),
        decoration: new BoxDecoration(
            borderRadius: const BorderRadius.all(const Radius.circular(10.0)),
            border: new Border.all(width: 1.2, color: Colors.black12)),
        child: TextFormField(
          onChanged: (text){
            counterModel.password=text;
          },
          obscureText: true,
          decoration: InputDecoration(
            fillColor: Colors.white,
            filled: true,
            border: OutlineInputBorder(),
            labelText: 'Password',
          ),
        ));
  }
}
