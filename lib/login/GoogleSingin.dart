

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';

import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';

class GoogleSinginProvider extends ChangeNotifier{
final googleSignIn = GoogleSignIn();
GoogleSignInAccount ? _user;
GoogleSignInAccount get user => _user!;

Future googleLogin() async{
  final googleUser = await googleSignIn.signIn();
  if(googleUser == null) return;
  _user = googleUser;

  final googleAuth = await googleUser.authentication;
  final credential = GoogleAuthProvider.credential(
      accessToken: googleAuth.accessToken,
      idToken: googleAuth.idToken,
  );

  print(credential);
  UserCredential userCredential = await FirebaseAuth.instance.signInWithCredential(credential);
  print(userCredential.user!.displayName);
  print(userCredential.user!.email);
  print(userCredential.user!.phoneNumber);
  print(userCredential.user!.providerData);
  notifyListeners();
}
}