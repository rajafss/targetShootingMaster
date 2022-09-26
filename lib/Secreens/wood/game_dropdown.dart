import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:targetshootingmaster/Secreens/wood/wood_form_outsid.dart';

/////Types code///
class TypesGame extends StatelessWidget {
  const TypesGame({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return   StreamBuilder<QuerySnapshot>(
        stream: FirebaseFirestore.instance.collection('wood').snapshots(),
        builder: (context, snapshot) {
          if (!snapshot.hasData) {
            return const Center(
              child: CupertinoActivityIndicator(),
            );
          }
          List<dynamic> game = snapshot.data!.docs[0]['game'];

          List<String> listString = [];

          for (dynamic type in game) {
            listString.add(type);
          }

          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: InputDecorator(
              decoration: const InputDecoration(
                //labelText: 'Activity',
                hintText: 'Choose an item',
                hintStyle: TextStyle(
                  color: Colors.black,
                  fontSize: 16.0,
                  fontFamily: "OpenSans",
                  fontWeight: FontWeight.normal,
                ),
              ),
              //isEmpty: selectValue == null,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(5.0)),
                    child: Game(
                      list: listString,
                    )),
              ),
            ),
          );
        });
  }
}

class Game extends StatefulWidget {
  final List<String> list;
  const Game({Key? key, required this.list}) : super(key: key);

  @override
  State<Game> createState() => _gameState();
}

class _gameState extends State<Game> {
  String selectValue = '';

  @override
  void initState() {
    selectValue = widget.list[0];
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      isExpanded: true,
      underline:Container(),
      value: selectValue,
      onChanged: (newValue) {
       // if(widget.list.contains(newValue))
        setState(() {
          selectValue = newValue!;
          print(selectValue);

          // widget.list.add(selectValue);
        });
      },
      items: widget.list.map((String document) {
        return  DropdownMenuItem<String>(

            value: document,
            child:  Container(
              padding: const EdgeInsets.fromLTRB(10.0, 2.0, 10.0, 2.0),
              child:  Text(document, style: const TextStyle(color: Colors.black)),
            ));
      }).toList(),
    );
  }
}