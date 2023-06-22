import 'dart:ffi';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:hello_flutter/screens/second.dart';

class Onboard extends StatefulWidget {
  @override
  _OnboardState createState() => _OnboardState();
}

class _OnboardState extends State<Onboard>{
  @override
  Widget build(BuildContext context){
    double screenHeight = MediaQuery.of(context).size.height;
    double padTop;
    if(screenHeight<680){
      padTop =  10;
    }else{
      padTop = 60;
    }
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xffF4CD4A),
              Color(0xffD2C6DA)
            ],
            stops: [0.495,0.495],
            tileMode: TileMode.clamp,
          ),
        ),
      child: Column(
        children:[
          Image.asset(
            "assets/img/onboard1.png",
            height: 432,
          ),
          Center(
            child: Container(
              height: screenHeight - 432,
              child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 50,right: 50,top: padTop,bottom: 6),
                  child: const Text(
          "Bridge the Communication Gap",
          style: TextStyle(
            fontFamily: "Inter",
            color: Color(0xff494545),
            fontWeight: FontWeight.w800,
            fontSize: 28,
            ),
            textAlign: TextAlign.center,
        )),
        const Padding(
                  padding: EdgeInsets.only(left: 50,right: 50,top: 0,bottom: 10),
                  child: Text(
          "Designed to bridge the communication gap between sign language users and the hearing world",
          style: TextStyle(
            fontFamily: "Inter",
            color: Color(0xff494545),
            fontWeight: FontWeight.w300,
            fontSize: 12,
            ),
            textAlign: TextAlign.center,
        )),
        Spacer(),
        InkWell(
          onTap: (){
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => SecondPage(),
              ),
            );
          },
          child:const Align(
        alignment: Alignment.bottomCenter,
        child: Padding(
                  padding: EdgeInsets.only(left: 50,right: 50,top:40,bottom:20),
                  child: Wrap(
                    crossAxisAlignment: WrapCrossAlignment.center,
                    children: [
                      Text(
          "GET STARTED",
          style: TextStyle(
            fontFamily: "Inter",
            color: Color(0xff494545),
            fontWeight: FontWeight.w600,
            fontSize: 14,
            ),
            textAlign: TextAlign.center,
        ),
        Icon(Icons.arrow_right_alt_rounded,color: Color(0xff494545),size: 20,),
                    ],
                  )
                  )
                  ),
              )],
            )
            )
          ),
      ])
      ),
    );
  }

}