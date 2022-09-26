import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:targetshootingmaster/Constants.dart';
import 'package:targetshootingmaster/Secreens/Checkbox.dart';


import 'package:targetshootingmaster/Secreens/Home.dart';
class Register extends StatefulWidget {
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  final _auth = FirebaseAuth.instance;
  late String fullName;
  late String age;
  late String phone;
  late String email;
  bool showSpinner = false;



  @override
  Widget build(BuildContext context) {
       return Scaffold(
         backgroundColor: Colors.black54,
         appBar: AppBar(
           elevation: 0,
         ),
         body: SingleChildScrollView(
           child: Padding(
             padding: const EdgeInsets.all(20.0),
             child: Center(
               child: ModalProgressHUD(
                 inAsyncCall: showSpinner,
                 child: new Column(
                   crossAxisAlignment: CrossAxisAlignment.start,
                   children: [
                     new Text('Register',
                     style: TextStyle(color: Colors.white,
                       fontSize: 30,
                     ),
                     ),
                     SizedBox(
                       height: 20.0,
                     ),
                     new Text('FullName',style: TextStyle(color: Colors.amberAccent.shade100),),
                     SizedBox(
                       height: 20,
                     ),
                     new Container(
                       padding: EdgeInsets.all(6),
                       decoration: BoxDecoration(
                         borderRadius: BorderRadius.all(
                           Radius.circular(10),
                         ),
                         color: Colors.white,
                       ),
                       width: 370.0,
                       child: new Center(
                         child: TextField(
                           textAlign: TextAlign.center,
                           onChanged: (value) {
                             fullName = value;
                             //Do something with the user input.
                           },
                           decoration: InputDecoration(
                             hintText: 'FullName',
                             prefixIcon: Icon(Icons.person,),
                             border: InputBorder.none,


                           ),
                         ),
                       ),
                     ),
                     SizedBox(
                       height: 15.0,
                     ),
                     new Text('Age',style: TextStyle(color: Colors.amberAccent.shade100),),
                     SizedBox(
                       height: 20,
                     ),
                     new Container(
                       padding: EdgeInsets.all(6),
                       decoration: BoxDecoration(
                         borderRadius: BorderRadius.all(
                           Radius.circular(10),
                         ),
                         color: Colors.white,
                       ),
                       width: 370.0,
                       child: new Center(
                         child: TextField(
                            textAlign: TextAlign.center,
                            onChanged: (value) {
                              age = value;
                            },
                           decoration: InputDecoration(
                             hintText: 'Age',
                             prefixIcon: Icon(Icons.calendar_month),
                             border: InputBorder.none,


                           ),
                         ),
                       ),
                     ),
                     SizedBox(
                       height: 15.0,
                     ),
                     new Text('Phone',style: TextStyle(color: Colors.amberAccent.shade100),),
                     SizedBox(
                       height: 20,
                     ),
                     new Container(
                       padding: EdgeInsets.all(6),
                       decoration: BoxDecoration(
                         borderRadius: BorderRadius.all(
                           Radius.circular(10),
                         ),
                         color: Colors.white,
                       ),
                       width: 370.0,
                       child: new Center(
                         child: TextField(
                           keyboardType: TextInputType.phone,
                           textAlign: TextAlign.center,
                           onChanged: (value) {
                             phone = value;
                           },

                           decoration: InputDecoration(
                             hintText: 'Phone',
                             prefixIcon: Icon(Icons.phone),
                             border: InputBorder.none,


                           ),
                         ),
                       ),
                     ),
                     SizedBox(
                       height: 15.0,
                     ),
                     new Text('E-mail',style: TextStyle(color: Colors.amberAccent.shade100),),
                     SizedBox(
                       height: 20,
                     ),
                     new Container(
                       padding: EdgeInsets.all(6),
                       decoration: BoxDecoration(
                         borderRadius: BorderRadius.all(
                           Radius.circular(10),
                         ),
                         color: Colors.white,
                       ),
                       width: 370.0,
                       child: new Center(
                         child: TextField(
                           keyboardType: TextInputType.emailAddress,
                           textAlign: TextAlign.center,
                           onChanged: (value) {
                             email = value;
                           },
                           decoration: InputDecoration(
                             hintText: 'Email',
                             prefixIcon: Icon(Icons.email),
                             border: InputBorder.none,


                           ),
                         ),
                       ),
                     ),
                     SizedBox(
                       height: 15.0,
                     ),
                     CheckBox(),
                     SizedBox(
                       height: 40.0,
                     ),
                     Container(
                       width: 370.0,
                       height: 50,
                       color: Colors.amberAccent.shade100,
                       child: MaterialButton(
                         onPressed: (){},
                         child: new MaterialButton(
                           onPressed: (){
                             Navigator.push(context, MaterialPageRoute(builder: (context)=>  Home()),);
                           },
                           child: Text('SAVE',
                             style: TextStyle(color: Colors.black,fontSize: 30),
                           ),
                         ),
                       ),

                     ),

                   ],
                 ),
               ),
             ),
           ),
         ),
       );
  }
  
}



// class User {
//   final String FullName;
//   final String Age ;
//   final String Phone;
//   final String Email;
//
//   User(this.FullName,this.Age,this.Email){
//
//   }
// }