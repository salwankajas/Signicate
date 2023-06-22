import 'package:flutter/material.dart';

import 'package:flutter_mediapipe/flutter_mediapipe.dart';
import 'package:flutter_mediapipe/gen/landmark.pb.dart';

class Camera extends StatefulWidget {
  @override
  _Camera createState() => _Camera();
}

class _Camera extends State<Camera> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          iconTheme: IconThemeData(color: Color(0xff494545)),
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        body: Container(
            child: NativeView(
                onViewCreated: (FlutterMediapipe c) => setState(() {
                      c.landMarksStream.listen(_onLandMarkStream);
                      c.platformVersion.then((content) => print("content"));
                    }))),
      ),
    );
  }
  
  void _onLandMarkStream(NormalizedLandmarkList landmarkList) {
    landmarkList.landmark.asMap().forEach((int i, NormalizedLandmark value) {
      print('Index: $i \n' + '$value');
    });
  }
}