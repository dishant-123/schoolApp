import 'package:flutter/material.dart';
class ProfileCard extends StatelessWidget {
  String text;
  IconData iconType;
  ProfileCard({@required this.iconType, @required this.text});
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 4.0, horizontal: 20.0),
      child: ListTile(
        leading: Icon(iconType, color: Color(0xFFCC7000),size: 30.0,),
        title: Text(
          text,
          style: TextStyle(
                  fontFamily: 'Source Sans Pro',
                  fontSize: 20.0),
        ),
      ),
    );
  }
}
