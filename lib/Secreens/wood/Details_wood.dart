
import 'package:targetshootingmaster/Secreens/wood/game_dropdown.dart';

import '../../Constants.dart';
import '../../models/wood.dart';
import '../About.dart';
import '../Calendar/calendar.dart';
import '../Contact/contact.dart';
import '../Home.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class FormDetailsWood extends StatelessWidget {
  String txtController,gunControl,weightControl;
  // List game,fist,wood_type,custodian,wood,stock_type,design;
  FormDetailsWood({required this.txtController,required this.gunControl,required this.weightControl});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: new Text('Result', style: TextStyle(color: Colors.amberAccent.shade100,fontSize: 30),)),
      ),

      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
             // for (var i = 0; i < selectedItem_ArrayList.length; i++)
             //  ListTile(
             //  title: Text([i])),
              Text('Gun type : ${gunControl.toString()}',
                style: TextStyle(fontSize: 22,color: Colors.white),
                textAlign: TextAlign.center,),

              Text('Additions : ${txtController.toString()}',
                style: TextStyle(fontSize: 22,color: Colors.white),
                textAlign: TextAlign.center,),

              Text('Weight barell : ${weightControl.toString()}',
                style: TextStyle(fontSize: 22,color: Colors.white),
                textAlign: TextAlign.center,),
            ]),
      ),


      drawer: new Drawer(
        backgroundColor: Colors.grey.shade800,
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: [
                IconButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>  Home()),);
                }, icon: Icon(Icons.menu_sharp,color: Colors.white,)),
                SizedBox(
                  width: 10.0,
                ),
                Text('Home',style: TextStyle(color: Colors.white,fontSize: 20.0),)
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                IconButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>  About()),);
                }, icon: Icon(Icons.info_outline,color: Colors.white,)),
                SizedBox(
                  width: 10.0,
                ),
                Text('About Coach',style: TextStyle(color: Colors.white,fontSize: 20.0),)
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                IconButton(onPressed: (){}, icon: Icon(Icons.pages,color: Colors.white,)),
                SizedBox(
                  width: 10.0,
                ),
                Text('My Courses',style: TextStyle(color: Colors.white,fontSize: 20.0),)
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                IconButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>  Calendar()),);
                }, icon: Icon(Icons.calendar_month,color: Colors.white,)),
                SizedBox(
                  width: 10.0,
                ),
                Text('Calandar',style: TextStyle(color: Colors.white,fontSize: 20.0),)
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                IconButton(onPressed: (){}, icon: Icon(Icons.person,color: Colors.white,)),
                SizedBox(
                  width: 10.0,
                ),
                Text('Profile',style: TextStyle(color: Colors.white,fontSize: 20.0),)
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                IconButton(onPressed: (){}, icon: Icon(Icons.settings,color: Colors.white,)),
                SizedBox(
                  width: 10.0,
                ),
                Text('Settings',style: TextStyle(color: Colors.white,fontSize: 20.0),)
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                IconButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>  Contact()),);
                },
                    icon: Icon(Icons.phone,color: Colors.white,)),
                SizedBox(
                  width: 10.0,
                ),
                Text('Contact',style: TextStyle(color: Colors.white,fontSize: 20.0),)
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                IconButton(onPressed: (){}, icon: Icon(Icons.logout,color: Colors.white,)),
                SizedBox(
                  width: 10.0,
                ),
                Text('Sign out',style: TextStyle(color: Colors.white,fontSize: 20.0),)
              ],
            ),
            SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
      // bottomNavigationBar: Row(
      //   children: <Widget>[
      //     buildNavBarItem(Icons.home,0,true),
      //     buildNavBarItem(Icons.calendar_month,1,false),
      //     buildNavBarItem(Icons.ac_unit,2,false),
      //   ],
      // ),
    );
  }

//   @override
//   State<FormDetailsWood> createState() => _FormDetailsWoodState();
// }
//
// class _FormDetailsWoodState extends State<FormDetailsWood> {
  // int _selectItemIndex = 0;
  // onTap(){
  //   setState((){});
  // }



}
