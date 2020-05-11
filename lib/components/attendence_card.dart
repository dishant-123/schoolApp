import 'package:flutter/material.dart';
import '../Constrants.dart';
import '../components/attendenceCardBox.dart';
class AttendenceCard extends StatelessWidget {
  @override
  String month;
  int  working, present, leave, absent, average;
  AttendenceCard({@required this.absent,@required  this.average,@required  this.leave,@required this.month,@required this.present,@required  this.working});
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
          Navigator.pushNamed(context, 'attendenceDetail');
      },
      child: Card(
        elevation: 9.0,

        margin: EdgeInsets.all(15.0),
        child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Icon(
                  Icons.calendar_today,
                  size: 30.0,
                  color: Color(0xFFCC7000),
                ),
                Text(
                  'Month',
                  style: TextStyle(fontSize: 22.0, fontFamily: 'Source Sans Pro'),
                ),
                Text(
                  month,
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.grey.shade700,
                  ),
                ),
                Icon(
                    Icons.work,
                    color: Color(0xFFCC7000),
                ),
                Text(
                  'Working',
                  style: TextStyle(fontSize: 22.0),
                ),
                Text(
                  working.toString(),
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.grey.shade700,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Text(
                  'Present',
                  style: KAttedenceFontStyle,
                ),
                Text(
                  'Leave',
                  style: KAttedenceFontStyle,
                ),
                Text(
                  'Absent',
                  style: KAttedenceFontStyle,
                ),
                Text(
                  'Average',
                  style: KAttedenceFontStyle,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                AttendenceCardBox(
                  colour: Color(0xFF00AB45),
                  text: present.toString(),
                ),
                AttendenceCardBox(
                  colour: Color(0xFF23A1C3),
                  text: leave.toString(),
                ),
                AttendenceCardBox(
                  colour: Colors.redAccent,
                  text: absent.toString(),
                ),
                AttendenceCardBox(
                  colour: Color(0xFFBD09DE),
                  text: average.toString(),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
