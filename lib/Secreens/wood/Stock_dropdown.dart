



import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

/////Types code///
class TypesStock extends StatelessWidget {
  const TypesStock({Key? key}) : super(key: key);

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
          List<dynamic> types_wood = snapshot.data!.docs[0]['types_stock'];

          List<String> listString = [];

          for (dynamic type in types_wood) {
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
                    child: Stock(
                      list: listString,
                    )),
              ),
            ),
          );
        });
  }
}

class Stock extends StatefulWidget {
  final List<String> list;
  const Stock({Key? key, required this.list}) : super(key: key);

  @override
  State<Stock> createState() => _gameState();
}

class _gameState extends State<Stock> {
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
        setState(() {
          selectValue = newValue!;
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