import 'package:flutter/material.dart';

class ImgLogo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200.0,
      margin: EdgeInsets.only(bottom: 10.0, top: 30.0),
      child: Image.asset('assets/shield.png'),
    );
  }
}
