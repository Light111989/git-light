import 'package:etcheckinapp/module/user.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class InfoPage extends StatefulWidget {
  @override
  _InfoPageState createState() => _InfoPageState();
}

class _InfoPageState extends State<InfoPage> {
  @override
  Widget build(BuildContext context) {
    final userModel = Provider.of<UserModel>(context);
     String aaa= userModel.username;
    return Container(
      color: Colors.white,
      child: Center(
        child: ListView(
          children: <Widget>[
           
            Text(aaa),

          ],
        ),
      ),
    );
  }
}
