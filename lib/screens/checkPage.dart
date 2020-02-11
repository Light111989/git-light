import 'package:etcheckinapp/module/user.dart';
import 'package:flutter/material.dart';
import 'package:location/location.dart';
import 'package:provider/provider.dart';

class CheckPage extends StatefulWidget {
  @override
  _CheckPageState createState() => _CheckPageState();
}

class _CheckPageState extends State<CheckPage> {
 
  // Map<String, double> currentLocation = new Map();
  // StreamSubscription<Map<String, double>> locationSubscription;

  // Location location = new Location();
  String error;
  String longitude = "sss";
  String latitude = "bbb";
  @override
  void initState() {
    super.initState();
    initPlatformState();
  }

  void initPlatformState() async {
    var location = new Location();
    // try {
    //   var location = new Location();
    var currentLocation = await location.getLocation();
    print(currentLocation.longitude);

    setState(() {
      longitude = currentLocation.longitude.toString();
      latitude = currentLocation.latitude.toString();
    });
    // } on PlatformException catch (e) {
    //   if (e.code == 'PERMISSION_DENIED') {
    //     // error = 'Permission denied';
    //   }
    //   currentLocation = null;
    // }
    // location.onLocationChanged().listen((LocationData currentLocation) {
    //   print(currentLocation.longitude);
    //   longitude = currentLocation.longitude.toString();
    //   latitude = currentLocation.latitude.toString();
    // });
  }

  @override
  Widget build(BuildContext context) {
     final userModel = Provider.of<UserModel>(context);
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Your current location: $userModel',
            ),
            Text(
              'longitude: $longitude\nlatitude: $latitude',
            ),
          ],
        ),
      ),
    );
  }
}
