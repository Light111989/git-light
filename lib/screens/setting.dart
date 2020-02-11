import 'package:flutter/material.dart';

class SettingPage extends StatefulWidget {
  @override
  _SettingPageState createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Center(
          child: TextFormField(
        decoration: InputDecoration(
          fillColor: Colors.red,
          filled: true,
          border: OutlineInputBorder(),
          labelText: 'Setting',
        ),
      )),
    );
  }
}
