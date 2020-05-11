import 'package:flutter/material.dart';

class HomeWorkCard extends StatelessWidget {
   String date,text;

   HomeWorkCard({@required this.date,@required this.text});
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(8.0),
            width: double.infinity,
            color: Color(0xFFEEF0E2),
            child: Text(
              date,
              textAlign: TextAlign.start,
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
                color: Colors.red,
              ),
            ),
          ),
          SizedBox(
            height: 19.0,
          ),
          Text(
            text,
            style: TextStyle(fontSize: 20.0,letterSpacing: 0.8),
          ),
        ],
      ),
    );
  }
}
