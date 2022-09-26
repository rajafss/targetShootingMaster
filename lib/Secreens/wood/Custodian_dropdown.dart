



import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

/////Types code///
class Custodian extends StatelessWidget {
  const Custodian({Key? key}) : super(key: key);

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
          List<dynamic> Costodian = snapshot.data!.docs[0]['custodian'];

          List<bool> listString = [];

          for (dynamic type in Costodian) {
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
                    child: CustodianItem(
                      list: listString,
                    )),
              ),
            ),
          );
        });
  }
}

class CustodianItem extends StatefulWidget {
  final List<bool> list;
  const CustodianItem({Key? key, required this.list}) : super(key: key);

  @override
  State<CustodianItem> createState() => _CustodianItemState();
}

class _CustodianItemState extends State<CustodianItem> {
  bool? selectValue ;

  @override
  void initState() {
    selectValue = widget.list[0];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return DropdownButton<bool>(
      isExpanded: true,
      underline:Container(),
      value: selectValue,
      onChanged: (newValue) {
        setState(() {
          selectValue = newValue!;
        });
      },
      items: widget.list.map((document) {
        return  DropdownMenuItem<bool>(

            value: document,
            child:  Container(
              padding: const EdgeInsets.fromLTRB(10.0, 2.0, 10.0, 2.0),
              child:  Text("${document}", style: const TextStyle(color: Colors.black)),
            ));
      }).toList(),
    );
  }
}