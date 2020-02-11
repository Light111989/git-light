import 'package:barcode_scan/barcode_scan.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:location/location.dart';

class QrBarCode extends StatefulWidget {
  @override
  _QrBarCodeState createState() => _QrBarCodeState();
}

class _QrBarCodeState extends State<QrBarCode> {
  String result = "get QR code";
  String error;
  String longitude = "0.0";
  String latitude = "0.0";
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
   }
  Future _scanQR() async {
    try {
      String qrResult = await BarcodeScanner.scan();
      setState(() {
        result = qrResult;
      });
    } on PlatformException catch (ex) {
      if (ex.code == BarcodeScanner.CameraAccessDenied) {
        setState(() {
          result = "Camera permission was denied";
        });
      } else {
        setState(() {
          result = "Unknown Error $ex";
        });
      }
    } on FormatException {
      setState(() {
        result = "You pressed the back button before scanning anything";
      });
    } catch (ex) {
      setState(() {
        result = "Unknown Error $ex";
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          children: <Widget>[
            Text('$result'),
            Text( 'longitude: $longitude\nlatitude: $latitude',)
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        icon: Icon(Icons.camera_alt),
        label: Text("Scan"),
        onPressed: _scanQR,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
