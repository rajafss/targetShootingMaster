import 'package:flutter/material.dart';
import 'package:targetshootingmaster/Secreens/About.dart';
import 'package:targetshootingmaster/Secreens/Home.dart';
import 'package:targetshootingmaster/Constants.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '../Calendar/calendar.dart';
import '../Contact/contact.dart';
class DetailsScreen extends StatefulWidget {
  @override
  _DetailsScreenState createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  int _selectItemIndex = 0;
  void onTap(){
    setState((){

    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: new Text('Pack Details',style: TextStyle(color: Colors.white,fontSize: 30),)),
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
                IconButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>  Contact()),);}, icon: Icon(Icons.phone,color: Colors.white,)),
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
      body: new Column(
        children: [

        ],
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


// body: StreamBuilder<QuerySnapshot<Map<String, dynamic>>>(
// stream: FirebaseFirestore.instance.collection('packages').snapshots(),
// builder: (context,snapshot){
// if(!snapshot.hasData) {
// return Text('waiting');
// }else{
// print("ghgg");
// print(snapshot.data!.docs[0].data());
// return ListView.builder(
// itemCount: snapshot.data!.docs.length,
// itemBuilder: (context,index){
//
// return Column(
// crossAxisAlignment: CrossAxisAlignment.start,
// mainAxisAlignment: MainAxisAlignment.start,
// children: [
// new Text( snapshot.data!.docs[index]['title'],style: TextStyle(color: AppColors.kSecandryColor,fontSize: 40),),
// SizedBox(
// height: 40,
// ),
// new Text(snapshot.data!.docs[index]['courses'].toString() ,style: TextStyle(color: AppColors.kSecandryColor,fontSize: 30),),
// new Text(snapshot.data!.docs[index]['courses_per_week'].toString() ,style: TextStyle(color: AppColors.kSecandryColor,fontSize: 30),),
// SizedBox(
// height: 40,
// ),
// ],
// );
//
// },
// );
//
// }
//
//
// }
// ),


//new Container(
//                         padding: EdgeInsets.all(10),
//                         decoration: BoxDecoration(
//                           borderRadius: BorderRadius.all(
//                             Radius.circular(10),
//                           ),
//                           color: AppColors.kContaineryColor,
//
//                         ),
//                         width: double.infinity,
//                         child: new MaterialButton(
//                           onPressed: (){
//                             Navigator.push(context, MaterialPageRoute(builder: (context)=>  Home()),);
//                           },
//                           child: Text('Maintenance',
//                             style: TextStyle(color: Colors.white,fontSize: 20),
//                           ),
//                         ),
//                       ),