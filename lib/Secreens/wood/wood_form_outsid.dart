import 'package:firebase_core/firebase_core.dart';
import 'package:targetshootingmaster/Secreens/settings/settings_view.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:targetshootingmaster/Secreens/wood/Custodian_dropdown.dart';
import 'package:targetshootingmaster/Secreens/wood/Details_wood.dart';
import 'package:targetshootingmaster/Secreens/wood/Stock_dropdown.dart';
import 'package:targetshootingmaster/Secreens/wood/design_dropdown.dart';
import 'package:targetshootingmaster/Secreens/wood/fist_dropdown.dart';
import 'package:targetshootingmaster/Secreens/wood/game_dropdown.dart';
import 'package:targetshootingmaster/Secreens/wood/haveWood_dropdown.dart';
import 'package:targetshootingmaster/Secreens/wood/woodType_dropdown.dart';

import '../../Constants.dart';
import '../About.dart';
import '../Calendar/calendar.dart';
import '../Contact/contact.dart';
import '../Home.dart';






class Woodfile extends StatefulWidget {
  @override
  _WoodfileState createState() => _WoodfileState();
}

class _WoodfileState extends State<Woodfile> {
  int _selectItemIndex = 0;
  onTap(){
    setState((){});
  }

  final Stream<QuerySnapshot> _woodStream = FirebaseFirestore.instance
      .collection('wood')
      .snapshots(includeMetadataChanges: true);
  List<Game> game = [];
  // List<String> getListBasedOnName(String value) {
  //   print(value);
  //   switch (value) {
  //     case "game":
  //       return game;
  //
  //       break;
  //     case "Type_stock":
  //       return catBreedsList;
  //       break;
  //
  //     case "design":
  //       return catSizeList;
  //       break;
  //     case "fist":
  //       return addOnServicesList;
  //       break;
  //       break;
  //     case "custodian":
  //       return addOnServicesList;
  //       break;
  //       break;
  //     case "have_wood":
  //       return addOnServicesList;
  //       break;
  //       break;
  //     case "types_wood":
  //       return addOnServicesList;
  //       break;
  //   }
  //
  //   return null;
  // }
  @override
  Widget build(BuildContext context) {
    TextEditingController txtController = TextEditingController();
    TextEditingController weightControl = TextEditingController();
    TextEditingController gunControl = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Wood Form', style: TextStyle(color: Colors.white,fontSize: 30),)),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Type Game',style: TextStyle(color: AppColors.kSecandryColor,fontSize: 20),),
                TypesGame(),
                Text('Type Stock',style: TextStyle(color: AppColors.kSecandryColor,fontSize: 20),),
                TypesStock(),
                Text('Design',style: TextStyle(color: AppColors.kSecandryColor,fontSize: 20),),
                Design(),
                Text('Fist',style: TextStyle(color: AppColors.kSecandryColor,fontSize: 20),),
                Fist(),
                Text('Custodian',style: TextStyle(color: AppColors.kSecandryColor,fontSize: 20),),
                Custodian(),
                Text('Have Wood',style: TextStyle(color: AppColors.kSecandryColor,fontSize: 20),),
                HaveWood(),
                Text('wood Type',style: TextStyle(color: AppColors.kSecandryColor,fontSize: 20),),
                WoodType(),
                Text('Gun Type',style: TextStyle(color: AppColors.kSecandryColor,fontSize: 20),),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    padding: EdgeInsets.all(6),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(5),
                      ),
                      color: Colors.white,
                    ),
                    width: double.infinity,
                    child: Center(
                      child: TextField(
                        autocorrect: true,
                        controller: gunControl,
                        decoration: InputDecoration(
                          hintText: 'Type of Gun',
                          border: InputBorder.none,


                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text('barrel weight',style: TextStyle(color: AppColors.kSecandryColor,fontSize: 20),),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    padding: EdgeInsets.all(6),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(5),
                      ),
                      color: Colors.white,
                    ),
                    width: double.infinity,
                    child: Center(
                      child: TextField(
                        autocorrect: true,
                        controller: weightControl,
                        // keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          hintText: 'barrel weight',
                          border: InputBorder.none,


                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text('Any Other Additions',style: TextStyle(color: AppColors.kSecandryColor,fontSize: 20),),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    padding: EdgeInsets.all(6),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(5),
                      ),
                      color: Colors.white,
                    ),
                    width: double.infinity,
                    height: 90,
                    child: TextField(
                      autocorrect: true,
                        controller: txtController,
                      decoration: InputDecoration(
                        hintText: 'Any Other Additions',
                        border: InputBorder.none,
                        hintMaxLines: 5


                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: 370.0,
                    height: 50,
                    color: Colors.amberAccent.shade100,
                    child: MaterialButton(
                      onPressed: (){},
                      child: MaterialButton(
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(
                              builder: (context)=>  FormDetailsWood(weightControl:weightControl.text,
                              gunControl: gunControl.text,
                              txtController: txtController.text,)),);
                          Map<String,dynamic> data = {"gun":gunControl.text,"additions":txtController.text,"weight":weightControl.text};
                          FirebaseFirestore.instance.collection('woodTest').add(data);
                        },
                        child: Text('SAVE',
                          style: TextStyle(color: Colors.black,fontSize: 30),
                        ),
                      ),
                    ),

                  ),
                ),


              ],
            ),
          ),
        ),
      ),




      // ListView(
      //   padding: EdgeInsets.symmetric(horizontal: 15.0),
      //   children: <Widget>[
      //     Padding(
      //       padding: const EdgeInsets.all(8.0),
      //       child:
      //       Column(
      //         crossAxisAlignment: CrossAxisAlignment.start,
      //         children: [
      //           // Text(' Game type',style: TextStyle(color: AppColors.kSecandryColor,fontSize: 20),),
      //           // SizedBox(
      //           //   height: 20,
      //           // ),
      //           // Container(
      //           //   color: Colors.white,
      //           //   child: DropdownButtonHideUnderline(
      //           //     child: Padding(
      //           //       padding: const EdgeInsets.all(5.0),
      //           //       child: Container(
      //           //         width:370,
      //           //         decoration: BoxDecoration(
      //           //             borderRadius: BorderRadius.all(
      //           //               Radius.circular(20),),
      //           //             color: Colors.white
      //           //         ),
      //           //         child: DropdownButton<String>(
      //           //           isExpanded: true,
      //           //           hint: Text(
      //           //             'Select Item',
      //           //             style: TextStyle(
      //           //                 fontSize: 14,
      //           //                 color: Colors.black
      //           //
      //           //             ),
      //           //           ),
      //           //           items: items.map((String val){
      //           //             return DropdownMenuItem<String>(
      //           //               value: val,
      //           //               child: Container(
      //           //                   margin: EdgeInsets.only(left: 10.0,right: 10.0),
      //           //                   child: new Text(val)
      //           //               ),
      //           //             );
      //           //           }).toList(),
      //           //
      //           //
      //           //           value: selectedValue,
      //           //           onChanged: (value) {
      //           //             setState(() {
      //           //               selectedValue = value as String;
      //           //             });
      //           //           },
      //           //
      //           //
      //           //         ),
      //           //       ),
      //           //     ),
      //           //   ),
      //           // ),
      //           // Text(' Gun type',style: TextStyle(color: AppColors.kSecandryColor,fontSize: 20),),
      //           // SizedBox(
      //           //   height: 20,
      //           // ),
      //           // new Container(
      //           //   padding: EdgeInsets.symmetric(horizontal: 30),
      //           //   decoration: BoxDecoration(
      //           //
      //           //     color: Colors.white,
      //           //   ),
      //           //   width: 375.0,
      //           //   child: new Center(
      //           //     child: TextField(
      //           //       decoration: InputDecoration(
      //           //         hintText: 'Type Of Gun',
      //           //         border: InputBorder.none,
      //           //
      //           //
      //           //       ),
      //           //     ),
      //           //   ),
      //           // ),
      //           // SizedBox(
      //           //   height: 40.0,
      //           // ),
      //           // Container(
      //           //   width: 370.0,
      //           //   height: 50,
      //           //   color: Colors.amberAccent.shade100,
      //           //   child: MaterialButton(
      //           //     onPressed: (){},
      //           //     child: new MaterialButton(
      //           //       onPressed: (){
      //           //         Navigator.push(context, MaterialPageRoute(builder: (context)=>  Home()),);
      //           //       },
      //           //       child: Text('SAVE',
      //           //         style: TextStyle(color: Colors.black,fontSize: 30),
      //           //       ),
      //           //     ),
      //           //   ),
      //           // ),
      //           // SizedBox(
      //           //   height: 40,
      //           // ),
      //             DropdownButton(
      //               items: items.map<DropdownMenuItem<String>>((String value) {
      //                 return DropdownMenuItem<String>(
      //                   child: Text(value),
      //                 );
      //               }).toList(),
      //               onChanged: (String? Value) {
      //                 setState(() {
      //                   selectedValue = Value;
      //                 });
      //                 },
      //               value:selectedValue ,
      //               isExpanded: false,
      //               hint: Text('select item type',style: TextStyle(color: AppColors.kSecandryColor),),
      //             ),
      //
      //             StreamBuilder<QuerySnapshot<Map<String, dynamic>>>(
      //             stream: FirebaseFirestore.instance.collection('packages').snapshots(),
      //             builder: (context,snapshot) {
      //               if (!snapshot.hasData) {
      //                 return Text('waiting');
      //               } else {
      //                 print("wood");
      //                 print(snapshot.data!.docs[0].get('game'));
      //                 print(snapshot.data!.docs[0].get('fist'));
      //                 List<DropdownMenuItem<String>>_currentItem = [];
      //                 int i=0;
      //                 for(i==0;i<snapshot.data!.docs.length;i++){
      //                   DocumentSnapshot snap = snapshot.data!.docs[i];
      //                   _currentItem.add(
      //                     DropdownMenuItem(
      //                         child: Text(
      //                            snap
      //                         ),
      //                       value: "${snap.data().toString()}",
      //                     ),
      //                   );
      //                 }
      //
      //
      //                 return Column(
      //                   children: [
      //                     Text('data',style: TextStyle(color: Colors.white),),
      //                     SizedBox(
      //                       height: 20,
      //                     ),
      //                     DropdownButton(
      //                       items:_currentItem,
      //                       onChanged: ( String? currentValue){
      //                         setState((){
      //                           SelectedValue = currentValue;
      //                         });
      //                       },
      //                       value: SelectedValue,
      //                       isExpanded: false,
      //                     ),
      //
      //
      //                   ],
      //                 );
      //               }
      //             }
      //           )
      //         ],
      //       ),
      //     ),
      //
      //
      //   ],
      //
      // ),


      drawer: Drawer(
        backgroundColor: Colors.grey.shade800,
        child: Column(
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



