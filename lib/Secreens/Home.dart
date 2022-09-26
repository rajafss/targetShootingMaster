import 'package:flutter/material.dart';
import 'package:targetshootingmaster/Constants.dart';
import 'package:targetshootingmaster/Secreens/About.dart';
import 'package:targetshootingmaster/Secreens/AcademyScreen.dart';
import 'package:targetshootingmaster/Secreens/Contact/contact.dart';
import 'package:targetshootingmaster/Secreens/settings/settings_view.dart';
import 'package:targetshootingmaster/Secreens/wood/Wood.dart';

import 'Calendar/calendar.dart';
import 'Gun/Gun.dart';


  class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
  }
  class _HomeState extends State<Home> {

   int _selectItemIndex =0;
   void onTap(){
     setState((){

     });
   }
    @override
    Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // leading: Icon(Icons.menu,color: Colors.white,),
        title: Center(child: new Text('Home',style: TextStyle(color: Colors.white,fontSize: 30),)),

      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          child: new Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: Stack(
                  children: [
                    Opacity(
                      opacity: 0.3,
                      child: new Image(
                        image: AssetImage('assets/shooting.jpeg'),
                        fit: BoxFit.fill,
                        width: 400.0,


                      ),
                    ),
                    Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          new Text('ACADEMY', style: TextStyle(
                              color: Colors.red, fontSize: 30),),
                          SizedBox(
                            height: 20,
                          ),
                          Container(
                            decoration: BoxDecoration(
                                color: Colors.grey.shade400
                            ),
                            child: new MaterialButton(
                              onPressed: () {
                                Navigator.push(context, MaterialPageRoute(
                                    builder: (context) => Academy()),);
                              },
                              child: Text('Pay Now',
                                style: TextStyle(
                                    color: Colors.black, fontSize: 30),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],

                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Expanded(
                child: Stack(
                  children: [
                    Opacity(
                      opacity: 0.3,
                      child: new Image(image: AssetImage('assets/gun.jpeg'),
                        fit: BoxFit.fill,
                        width: 400.0,

                      ),
                    ),
                    Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          new Text('GUN', style: TextStyle(
                              color: Colors.red, fontSize: 30),),
                          SizedBox(
                            height: 20,
                          ),
                          Container(
                            decoration: BoxDecoration(
                                color: Colors.grey.shade400
                            ),
                            child: new MaterialButton(
                              onPressed: () {
                                Navigator.push(context, MaterialPageRoute(
                                    builder: (context) => Gun()),);
                              },
                              child: Text('Shop Now',
                                style: TextStyle(
                                    color: Colors.black, fontSize: 30),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],

                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Expanded(
                child: Stack(
                  children: [
                    Opacity(
                      opacity: 0.3,
                      child: new Image(image: AssetImage('assets/wood.jpeg'),
                        fit: BoxFit.fill,
                        width: 400.0,

                      ),
                    ),
                    Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          new Text('WOOD', style: TextStyle(
                              color: Colors.red, fontSize: 30),),
                          SizedBox(
                            height: 20,
                          ),
                          Container(
                            decoration: BoxDecoration(
                                color: Colors.grey.shade400
                            ),
                            child: new MaterialButton(
                              onPressed: () {
                                Navigator.push(context, MaterialPageRoute(
                                    builder: (context) => Wood()),);
                              },
                              child: Text('Shop Now',
                                style: TextStyle(
                                    color: Colors.black, fontSize: 30),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],

                ),
              ),


            ],
          ),
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
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>  Calendar()),);},
                    icon: Icon(Icons.calendar_month,color: Colors.white,)),
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
                IconButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>  SettingsView()),);
                }, icon: Icon(Icons.settings,color: Colors.white,)),
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
                  }, icon: Icon(Icons.phone,color: Colors.white,)),
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



// bottomNavigationBar: BottomNavigationBar(
//
//         backgroundColor: Colors.grey.shade900,
//         showSelectedLabels: true,
//         showUnselectedLabels: false,
//         items: const <BottomNavigationBarItem>[
//           BottomNavigationBarItem(
//             icon: Icon(Icons.home,color: Colors.amberAccent,size: 30,),
//             label: 'Home',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.calendar_month,color: Colors.amberAccent,size: 30,),
//             label: 'packages',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.ac_unit,color: Colors.amberAccent,size: 30,),
//             label: 'Profile',
//           ),
//         ],
//
//       ),

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