import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';
import 'package:targetshootingmaster/Secreens/About.dart';
import 'package:targetshootingmaster/Secreens/Home.dart';
import 'package:targetshootingmaster/Constants.dart';
import 'package:targetshootingmaster/Secreens/settings/settings_view.dart';

import 'Calendar/calendar.dart';
import 'Contact/contact.dart';
import 'courses/basicScreen.dart';
class Academy extends StatefulWidget {
  @override
  _AcademyState createState() => _AcademyState();
}

class _AcademyState extends State<Academy> {
  int _selectItemIndex =0;
  void onTap(){
    setState((){

    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: new Text('Packages', style: TextStyle(color: Colors.white,fontSize: 30),)),
      ),
      body: StreamBuilder<QuerySnapshot<Map<String, dynamic>>>(
        stream: FirebaseFirestore.instance.collection('packages').snapshots(),
        builder: (context,snapshot){
          if(!snapshot.hasData) {
            return Text('waiting');
          }else{
            print("ghgg");
            print(snapshot.data!.docs[0].data());
            return Padding(
              padding: const EdgeInsets.all(2.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  new Text('Hello , Geralt!' ,style: TextStyle(color: Colors.white,fontSize: 20),),
                  new Text('Let\'s explore' ,style: TextStyle(color: Colors.white,fontSize: 16),),
                  SizedBox(
                    height: 40,
                  ),
                  new Text('Courses Packages' ,style: TextStyle(color: Colors.white,fontSize: 16),),
                  SizedBox(
                    height: 20,
                  ),
                  ListView.builder(
                    shrinkWrap:true,
                    itemCount: snapshot.data!.docs.length,
                    itemBuilder: (context,index){

                      return
                      Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: new Container(
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(
                              Radius.circular(10),
                            ),
                            color: AppColors.kContaineryColor,

                          ),
                          width: double.infinity,
                          child: Row(

                            children: [
                             Column(
                               crossAxisAlignment: CrossAxisAlignment.start,
                               children: [
                                 new Text(snapshot.data!.docs[index]['title'],style: TextStyle(color: Colors.white,fontSize: 20,),),
                                 new Text('${snapshot.data!.docs[index]['courses'].toString()} Courses',style: TextStyle(color: Colors.white,fontSize: 16,),),
                                 new Text('${snapshot.data!.docs[index]['courses_per_week'].toString()} Days in Week',style: TextStyle(color: Colors.white,fontSize: 16,),),
                               ],
                             ),
                              SizedBox(
                                width: 130,
                              ),
                              Container(
                                padding: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(10),
                                  ),
                                  color: AppColors.kSecandryColor,

                                ),
                                child: new MaterialButton(
                                  onPressed: (){
                                    Navigator.push(context, MaterialPageRoute(builder: (context)=>  DetailsScreen()),);
                                  },
                                  child: Text('${snapshot.data!.docs[index]['price'].toString()} KWD',
                                    style: TextStyle(color: Colors.black,fontSize: 20),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
              new Container(
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(
                            Radius.circular(10),
                          ),
                          color: AppColors.kContaineryColor,

                        ),
                        width: double.infinity,
                        child: new MaterialButton(
                          onPressed: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>  Home()),);
                          },
                          child: Text('Maintenance',
                            style: TextStyle(color: Colors.white,fontSize: 20),
                          ),
                        ),
              ),
                ],
              ),
            );

          }


        }
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
                  },
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
                IconButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>  Contact()),);
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