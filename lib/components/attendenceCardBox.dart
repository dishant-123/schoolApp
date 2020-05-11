import 'package:flutter/material.dart';

class AttendenceCardBox extends StatelessWidget {
  Color colour;
  String text;
  AttendenceCardBox({this.text,this.colour});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 10.0, top: 10.0),
      color: colour,
      height: 30.0,
      width: 90.0,
      child: Text(
        text,
        textAlign: TextAlign.center,
        style: TextStyle(
            fontSize: 18.0, color: Colors.white, fontWeight: FontWeight.bold),
      ),
    );
  }
}
