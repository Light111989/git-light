import 'package:etcheckinapp/module/user.dart';
import 'package:etcheckinapp/screens/homeScreen.dart';
import 'package:etcheckinapp/screens/loginScreen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (BuildContext context) => UserModel(),
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: LoginScreen(),
        routes: {
          HomeScreen.routeName: ( context) => HomeScreen(),
          LoginScreen.routeName: ( context) => LoginScreen()
        },
      ),
    );
  }
}
