import 'package:flutter/material.dart';
import 'package:camera/camera.dart';
import 'package:hello_flutter/screens/fourth.dart';
import 'package:hello_flutter/mediapipe/camera.dart';
 
class ThirdPage extends StatelessWidget {
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
        margin: const EdgeInsets.only(left: 20, right: 20, top: 80, bottom: 40),
        child: Column(
          children: [
            Align(
              alignment: Alignment.center,
              child: Text(
                "Instructions",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.w800,
                  fontSize: 16,
                  color: Color(0xff494545),
                  fontFamily: "Inter",
                  letterSpacing: 1,
                ),
              ),
            ),
            SizedBox(height: 60),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "- Ensure that the camera captures at least half of the body, including both hands, within its frame, and position yourself accordingly.",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 16,
                  color: Color(0xff494545),
                  fontFamily: "Inter",
                ),
              ),
            ),
            SizedBox(height: 30),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "- Perform the action or gesture at a slow and steady pace to improve the accuracy of the detection and tracking of keypoints.",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 16,
                  color: Color(0xff494545),
                  fontFamily: "Inter",
                ),
              ),
            ),
            SizedBox(height: 30),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "- Make sure to perform the action in a well-lit environment to facilitate accurate detection and tracking of the keypoints on your hands.",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 16,
                  color: Color(0xff494545),
                  fontFamily: "Inter",
                ),
              ),
            ),
            SizedBox(height: 30),
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
          child: Container(
            height: 80,
            width:200,
            child:Align(
            alignment: Alignment.center,
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
        )
        ),
      ),
          ],
        ),
      ),
    );
  }
}
