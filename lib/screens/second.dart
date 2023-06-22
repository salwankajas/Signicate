import 'package:flutter/material.dart';
import 'package:hello_flutter/screens/third.dart';

class SecondPage extends StatelessWidget{
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
        // color: Colors.red,
        margin: const EdgeInsets.only(left: 20, right: 20,top:80,bottom:40),
        child: Column(children: [
          Align(
            alignment: Alignment.topLeft,
            child: Container(
              width: 80,
            child: Column(
              children: [
                Align(
            alignment: Alignment.topCenter,
            child: Text(
              "Home"
            ,
            style: TextStyle(color: Color(0xff494545),fontFamily:"Inter",fontWeight: FontWeight.w800,fontSize: 18,)
            ),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              margin: const EdgeInsets.only(left: 0, right: 0,top:6,bottom:0),
              width: 32,
              decoration: BoxDecoration(
                border: Border(bottom: BorderSide(
                  color: Colors.amber,
                  width: 2.5,
                  ))
              ),
            ),
          ),
            ]),
          ),
          ),
          InkWell(
            onTap: (){
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => ThirdPage(),
              ),
            );
          },
          child:Align(
            alignment: Alignment.topCenter,
            child: Container(
              margin: const EdgeInsets.only(top:45),
              child: Column(
                children: [
                  Container(
                    clipBehavior: Clip.hardEdge,
                    width: 460,
                    height: 120,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(38),
                      color: Color(0xff003667),
                      boxShadow: [
                        BoxShadow(color: Color.fromARGB(80,114,170,255), spreadRadius: 0,offset: Offset(3,6),blurRadius: 1,),
                        ],
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Expanded(
                          child: Padding(padding: EdgeInsets.only(left:40),
                          child: Text(
                            "Hand Sign To Speech",
                            style: TextStyle(color: Colors.white,fontSize: 12,fontWeight: FontWeight.w600,fontFamily: "Inter"),
                          )
                          )
                        ),
                        Expanded(
                          child: Container(
                            width: 600,
                            height: 600,
                            transform: Matrix4.translationValues(0, 20, 0),
                            child: Image.asset("assets/img/option1.png",fit: BoxFit.cover,)
                          ),
                  )
                  ]),
                  )
              ]),
            ),
            )
      ),
      ]),
      )
    );
  }
}