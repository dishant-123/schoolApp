import 'package:flutter/material.dart';

class NoticeCard extends StatelessWidget {
  String name, date, imageUrl, text;
  NoticeCard({this.name, this.imageUrl, this.date, this.text});
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.only(bottom: 13.0),
      child: Row(
        children: <Widget>[
          CircleAvatar(
            radius: 45.0,
            backgroundImage: AssetImage('assets/$imageUrl.jpg'),
          ),
          SizedBox(
            width: 10.0,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  name,
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 15.0,
                ),
                Text(
                  date,
                  style: TextStyle(
                    color: Colors.blueAccent,
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Text(
                  text,
                  style: TextStyle(
                    fontSize: 17.0,
                    letterSpacing: 1.0,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
