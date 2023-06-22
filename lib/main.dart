import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
// import 'package:hello_flutter/home.dart';
import 'package:hello_flutter/onboard/onboard.dart';
import 'package:permission_handler/permission_handler.dart';

Future<void> main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);
  requestCameraPermission();
  runApp(MyApp());
}

Future<void> requestCameraPermission() async {
  var status = await Permission.camera.status;
  print(Permission.camera.request().isGranted);
  if (await Permission.camera.request().isGranted) {

  }
  if (await Permission.camera.isPermanentlyDenied) {
    openAppSettings();
  }else {
    SystemNavigator.pop();
  }
}

class MyApp extends StatelessWidget{
  const MyApp({Key? key}) : super(key:key);

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