import 'package:flutter/material.dart';
import 'package:targetshootingmaster/Constants.dart';

class CheckBox extends StatefulWidget {
  @override
  _CheckBoxState createState() => _CheckBoxState();
}

class _CheckBoxState extends State<CheckBox> {
  bool valuefirst = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            new Text(
              'Have a Gun',
              style: TextStyle(color: Colors.amberAccent.shade100),
            ),
            SizedBox(
              width: 20,
            ),
            Transform.scale(
              scale: 2,
              child: Checkbox(
                  fillColor: MaterialStateProperty.resolveWith<Color?>(
                        (Set<MaterialState> states) => Colors.white,
                  ),
                  checkColor: AppColors.kSecandryColor,
                  activeColor: Colors.red,
                  focusColor: Colors.white,
                  value: valuefirst,
                  onChanged: (value) {
                    setState(() {
                      valuefirst = !valuefirst;
                    });
                  }),
            ),
          ],
        ),

        valuefirst == true
            ? Row(
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  new Container(
                    padding: EdgeInsets.all(6),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                      color: Colors.white,
                    ),
                    width: 370.0,
                    child: new Center(
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: 'Gun Name',
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                  ),
                ],
              )
            : Container()
      ],
    );
  }
}
