import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:targetshootingmaster/Secreens/splashScreen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:targetshootingmaster/login/GoogleSingin.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp( MyApp());
}
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIOverlays([]);

    return ChangeNotifierProvider(
      create: (contex)=> GoogleSinginProvider(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Target shooting Master',
        theme: new ThemeData(
          scaffoldBackgroundColor: Colors.grey.withOpacity(0.1),
          appBarTheme: AppBarTheme(
            color: Colors.transparent,
            elevation: 0,
            brightness: Brightness.light,
          ),
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),

        home:MyHomePage(),
      ),
    );
  }

}
