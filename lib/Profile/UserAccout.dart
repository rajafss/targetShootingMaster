


import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../Secreens/loginScreen.dart';

class Profile extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder(
        stream: FirebaseAuth.instance.authStateChanges(),
          builder: (context,snapshot){
          if(snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator(),);
          } else if(snapshot.hasError){
            return Center(child: Text('Somthing went wrong!'),);

          }
          return  Login();

          }

      ),
    );
  }

}