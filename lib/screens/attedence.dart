import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:schoolapp/components/attendence_card.dart';

class Attendence extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFFCC7001),
          title: Center(
            child: Text(
              'Attendence',
              style: TextStyle(fontSize: 21.0),
            ),
          ),
          actions: <Widget>[
            Padding(
              padding: EdgeInsets.only(right: 20.0),
              child: GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, '/');
                },
                child: Icon(
                  Icons.home,
                  size: 30.0,
                ),
              ),
            ),
          ],
        ),
        body: ListView(
          children: <Widget>[
            AttendenceCard(month: 'Jan',working: 20,present: 18, leave: 0,absent: 1,average: 90,),
            AttendenceCard(month: 'Feb',working: 25,present: 17, leave: 0,absent: 0,average: 89,),
            AttendenceCard(month: 'Mar',working: 28,present: 19, leave: 0,absent: 8,average: 50,),
            AttendenceCard(month: 'Apr',working: 30,present: 20, leave: 0,absent: 7,average: 70,),
            AttendenceCard(month: 'May',working: 29,present: 09, leave: 0,absent: 3,average: 70,),
            AttendenceCard(month: 'Jun',working: 20,present: 7, leave: 0,absent: 1,average: 70,),
            AttendenceCard(month: 'Jul',working: 20,present: 22, leave: 0,absent: 0,average: 40,),
            AttendenceCard(month: 'Aug',working: 17,present: 19, leave: 0,absent: 5,average: 70,),
            AttendenceCard(month: 'Sep',working: 26,present: 28, leave: 0,absent: 7,average: 80,),
          ],
        ));
  }
}
