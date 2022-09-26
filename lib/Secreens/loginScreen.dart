import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:targetshootingmaster/Secreens/RegisterScreen.dart';
import 'package:targetshootingmaster/login/GoogleSingin.dart';


class Login extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black54,
      appBar: AppBar(
        elevation: 0,
      ),
      body: new Center(
        child: new Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            new Text('Login or Register',style: TextStyle(color: Colors.white,fontSize: 30),),
            SizedBox(
              height: 40.0,
            ),
            new Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                color: Colors.blue.shade800,

              ),
              width: 370.0,
              child: Row(
                children: [
                  Image(image: AssetImage('assets/google.png'),width: 50.0,),
                  SizedBox(
                    width: 20.0,
                  ),
                  new MaterialButton(
                    onPressed: (){
                     final provider = Provider.of<GoogleSinginProvider>(context, listen: false);
                     provider.googleLogin();
                    },
                    child: Text('Sign in with Google',
                      style: TextStyle(color: Colors.white,fontSize: 20),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 15.0,
            ),
            new Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(10),
                ),
                color: Colors.blue.shade400,

              ),
              width: 370.0,
              child: Row(
                children: [
                  Image(image: AssetImage('assets/twitter.png'),width: 50.0,),
                  SizedBox(
                    width: 20.0,
                  ),
                  new MaterialButton(
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>  Register()),);
                    },
                    child: Text('Sign in with Twitter',
                      style: TextStyle(color: Colors.white,fontSize: 20),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 15.0,
            ),
            new Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(10),
                ),
                color: Colors.blue.shade700,

              ),
              width: 370.0,
              child: Row(
                children: [
                  Image(image: AssetImage('assets/facebook.png'),width: 50.0,),
                  SizedBox(
                    width: 20.0,
                  ),
                  new MaterialButton(
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>  Register()),);
                    },
                    child: Text('Sign in with Facebook',
                      style: TextStyle(color: Colors.white,fontSize: 20),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 15.0,
            ),
            new Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(10),
                ),
                color: Colors.green.shade600,

              ),
              width: 370.0,
              child: Row(
                children: [
                  Image(image: AssetImage('assets/whatsapp.png'),width: 50.0,),
                  SizedBox(
                    width: 20.0,
                  ),
                  new MaterialButton(
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>  Register()),);
                    },
                    child: Text('Sign in with Whatsapp',
                    style: TextStyle(color: Colors.white,fontSize: 20),
                  ),
                  ),
                ],
              ),
            ),

          ],
        ),
      ),
    );
  }


}