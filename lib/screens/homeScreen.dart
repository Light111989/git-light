import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:etcheckinapp/module/user.dart';
import 'package:etcheckinapp/screens/Info.dart';
import 'package:etcheckinapp/screens/qrbarcode.dart';
import 'package:etcheckinapp/screens/setting.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = "HomeScreen";
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  PageController _pageController = new PageController(initialPage: 1);
  int indexPage = 1;
  GlobalKey _bottomNavigationKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    final userModel = Provider.of<UserModel>(context);

    return Scaffold(
      appBar: new AppBar(
        title: new Text(userModel.username),
        leading: new Padding(
          padding: const EdgeInsets.all(5.0),
          child: new CircleAvatar(
              radius: 25.0, backgroundImage: AssetImage('assets/lili.png')),
        ),
        actions: <Widget>[Icon(Icons.power_settings_new)],
      ),
      bottomNavigationBar: CurvedNavigationBar(
        animationCurve: Curves.fastLinearToSlowEaseIn,
        index: indexPage,
        color: Colors.blue,
        backgroundColor: Colors.white,
        key: _bottomNavigationKey,
        items: <Widget>[
          Icon(Icons.people, size: 30),
          Icon(Icons.camera, size: 30),
          Icon(Icons.settings, size: 30),
        ],
        onTap: (indexPage) {
          setState(() {
            _pageController.jumpToPage(indexPage);
          });
        },
      ),
      body: PageView(
          controller: _pageController,
          children: <Widget>[
            InfoPage(),
            QrBarCode(),
            SettingPage(),
          ],
          onPageChanged: (int index) {
            setState(() {
              indexPage = index;
              _pageController.jumpToPage(index);
            });
          }),
    );
  }
}
