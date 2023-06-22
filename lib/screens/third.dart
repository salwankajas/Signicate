import 'package:flutter/material.dart';
import 'package:camera/camera.dart';
import 'package:hello_flutter/screens/fourth.dart';
// import 'package:hello_flutter/camera/camera_page.dart';
import 'package:hello_flutter/mediapipe/camera.dart';

class ThirdPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        iconTheme: IconThemeData(color: Color(0xff494545)),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Container(
        margin: const EdgeInsets.only(left: 20, right: 20,top:80,bottom:40),
        child: Column(
          children: [
            Align(
            alignment: Alignment.bottomCenter,
            child:
            Text(
            "NOTE"
          ,
          textAlign: TextAlign.center,
          style: TextStyle(fontWeight: FontWeight.w800,fontSize:16,color: Color(0xff494545),fontFamily: "Inter",letterSpacing: 3)),
          ),
        Spacer(),
        InkWell(
          onTap: (){
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => Camera(),
              ),
            );
          },
          child: Align(
            alignment: Alignment.bottomCenter,
            child:Wrap(
              crossAxisAlignment: WrapCrossAlignment.center,
              children: [
            Text(
            "Got it"
          ,
          textAlign: TextAlign.center,
          style: TextStyle(fontWeight: FontWeight.w600,fontSize:16,color: Color(0xff494545),fontFamily: "Inter")),
          SizedBox(width: 6),
          Icon(Icons.thumb_up_alt_outlined,color: Color(0xff494545),size: 16,),
              ],
            )
        ),
      ),
    ],)
    )
    );
  }
}