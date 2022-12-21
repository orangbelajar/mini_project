
import 'dart:async';

import 'package:flutter/material.dart';
import 'package:mynotes/screens/loginscreen.dart';

class SplashScreenPage extends StatefulWidget {
  
  @override
  State<SplashScreenPage> createState() => _SplashScreenPageState();
}

class _SplashScreenPageState extends State<SplashScreenPage> {
 



 @override
void initState(){
  super.initState();
  startSplashScreen();
}

 startSplashScreen() async{
  var duration = const Duration(seconds: 2);
  return Timer(duration, () {
    Navigator.of(context).pushReplacement(
      MaterialPageRoute(builder: (_){
        return LoginScreen();
      }),
    );
  });

  }
 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    backgroundColor: Color(0xff16213E),
    body: Center(child: Image.asset(
      "assets/splashscreen.png",
      // width: 700,
      // height: 2000.0,
    )),  
    );
  }
}