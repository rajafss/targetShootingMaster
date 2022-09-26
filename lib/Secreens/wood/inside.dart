import 'package:flutter/material.dart';

import '../../Constants.dart';
import '../About.dart';
import '../Calendar/calendar.dart';
import '../Contact/contact.dart';
import '../Home.dart';




class Inside extends StatefulWidget {
  @override
  _InsideState createState() => _InsideState();
}

class _InsideState extends State<Inside> {
  int _selectItemIndex = 0;
  onTap(){
    setState((){});
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: new Text('Wood', style: TextStyle(color: Colors.white,fontSize: 30),)),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [

          ],
        ),
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
      bottomNavigationBar: Row(
        children: <Widget>[
          buildNavBarItem(Icons.home,0,true),
          buildNavBarItem(Icons.calendar_month,1,false),
          buildNavBarItem(Icons.ac_unit,2,false),
        ],
      ),
    );
  }
  GestureDetector buildNavBarItem(IconData icon,int index,bool isActive) {
    return GestureDetector(
      onTap: (){
        setState((){
          _selectItemIndex = index;
        });
      },
      child: Container(
        height: 60,
        width: MediaQuery.of(context).size.width/3,
        decoration: index == _selectItemIndex
            ? BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(20)),
          gradient: LinearGradient(colors: [
            Colors.amberAccent.withOpacity(0.3),
            Colors.amberAccent.withOpacity(0.15),
          ],
            begin: Alignment.bottomCenter,end: Alignment.topCenter,
          ),
        ):BoxDecoration(),
        // color:index == _selectItemIndex ? Colors.white12: Colors.black12,

        child:Icon( icon, color: AppColors.kSecandryColor,size: 30,semanticLabel: 'home',),



      ),
    );
  }
}



