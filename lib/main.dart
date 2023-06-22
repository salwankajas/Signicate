import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
// import 'package:hello_flutter/home.dart';
import 'package:hello_flutter/onboard/onboard.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:app_settings/app_settings.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);
  runApp(MyApp());
}

void openAppSettings() {
  AppSettings.openAppSettings();
}

Future<void> requestCameraPermission() async {
  PermissionStatus status = await Permission.camera.request();

  if (status.isGranted) {

  } else if (status.isDenied) {
    SystemNavigator.pop();
  } else if (status.isPermanentlyDenied) {
    openAppSettings();
      if(!status.isGranted){
        SystemNavigator.pop();
      }
  }
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp>{

  @override
  void initState() {
    super.initState();
    requestCameraPermission();
  }

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: 'Signicate',
      theme:  ThemeData(
      ),
      debugShowCheckedModeBanner: false,
      home:Onboard(),
    );
  }
}