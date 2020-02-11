import 'package:etcheckinapp/module/user.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'Screens/loginScreen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ChangeNotifierProvider(
        create: (context) => UserModel(),
        child: MyHomePage()
        ),
    );
  }
}

