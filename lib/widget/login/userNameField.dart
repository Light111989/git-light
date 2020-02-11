import 'package:flutter/material.dart';

class TxtUser extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Container(
        margin: EdgeInsets.only(
          left: 30.0,
          right: 30.0,
          bottom: 10.0,
        ),
        decoration: new BoxDecoration(
            borderRadius: const BorderRadius.all(const Radius.circular(10.0)),
            border: new Border.all(width: 1.0, color: Colors.black12)),
        child: TextFormField(
          decoration: InputDecoration(
            fillColor: Colors.white,
            filled: true,
            border: OutlineInputBorder(),
            labelText: 'User Name',
          ),
          keyboardType: TextInputType.text,
          autocorrect: false,
        ));
  }
}
