import 'package:flutter/material.dart';

class AboutUsCard extends StatelessWidget {
  String singleKey, singleValue;
  AboutUsCard({this.singleKey, this.singleValue});
  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Text(singleKey,
            textAlign: TextAlign.center,
            style: TextStyle(
                color: Color(0xFFCC7000),
                fontWeight: FontWeight.bold,
                fontSize: 17.0)),
        title: Text(
          singleValue,
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 17.0, color: Colors.blue),
        ),
      ),
    );
  }
}
