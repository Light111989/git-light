import 'package:flutter/material.dart';
class TxtPass extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Container(
        margin: EdgeInsets.only(left: 30.0, right: 30.0),
        decoration: new BoxDecoration(
            borderRadius: const BorderRadius.all(const Radius.circular(10.0)),
            border: new Border.all(width: 1.2, color: Colors.black12)),
        child: TextFormField(
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
