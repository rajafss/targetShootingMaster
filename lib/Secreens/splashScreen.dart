import 'dart:async';

import 'package:flutter/material.dart';
import 'package:targetshootingmaster/Constants.dart';
import 'package:targetshootingmaster/Secreens/loginScreen.dart';

class MyHomePage extends StatefulWidget {
  @override
  SplashScreenState createState() => SplashScreenState();
}
class SplashScreenState extends State<MyHomePage> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3),
            ()=>Navigator.pushReplacement(context,
            MaterialPageRoute(builder:
                (context) => Login()
            )
        )
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.KbackgoundSplashColor.withOpacity(0.4),
      body: Center(
        child: new Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 400,
              height: 400,
              child: Image(image: AssetImage('assets/logo.jpeg'),
               ),
            )
          ],
        ),
      ),
    );
  }
}