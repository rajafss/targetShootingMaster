


import 'package:flutter/material.dart';

class SignUpWidget extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: new Column(
        children: [
          new FlutterLogo(size: 120,),
          Spacer(),
          new Text('FullName')
        ],
      ),
    );
  }

}