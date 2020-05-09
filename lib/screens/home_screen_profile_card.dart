import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../Constrants.dart';
class HomeScreenProfileCard extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Card(
        color: Color(0xFFE0E1CF),
        child: Row(
          children: <Widget>[
            Icon(
                Icons.account_circle,
                size: 170.0,
                color: Color(0xFF0B304D),
            ),
            SizedBox(
                width: 30.0,
            ),
            Container(
                child: Column(
                    children: <Widget>[
                        Text('RAMSHUL DUA',style: KhomeScreenNameStyle),
                        Text('Class : VII[B]', style: TextStyle(color: Color(0xFF4F5EA8),fontSize: 16.0))
                    ],
                ),
            )
          ],
        ),
      ),
    );
  }
}
