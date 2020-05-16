import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:schoolapp/components/notice_card.dart';

class Notice extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFCC7001),
        title: Center(
          child: Text(
            'Notice',
            style: TextStyle(fontSize: 20.0),
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
      body: Column(
        children: <Widget>[
          SizedBox(
            height: 20.0,
          ),
          Center(
            child: Text(
              'NOTICE',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  letterSpacing: 7,
                  fontSize: 40.0),
            ),
          ),
          Expanded(
            child: ListView(
              children: <Widget>[
                NoticeCard(name: 'PRINCIPLE',imageUrl: 'profileGirl',date: '[Mar 11, 2019 03:47 PM]',text: 'The school remain closed tommorow due to heavy rain.',),
                NoticeCard(name: 'NIKITA',imageUrl: 'profileGirl',date: '[Mar 01, 2019 02:47 PM]',text: 'Bring your atlas tommorow for some fun activities.',),
                NoticeCard(name: 'OFFICE',imageUrl: 'profileGirl',date: '[APr 10, 2016 01:47 PM]',text: 'Your academic fee for month March is dua. Kindly clear it before exam.',),
                NoticeCard(name: 'SHALINI GUPTA',imageUrl: 'profileGirl',date: '[May 14, 2016 08:47 PM]',text: 'The school remain closed tommorow due to heavy rain.',),
                NoticeCard(name: 'ARUN KUMAR',imageUrl: 'profileGirl',date: '[Dec 18, 2018 10:47 PM]',text: 'The school remain closed tommorow due to heavy rain.',),
                NoticeCard(name: 'DISHANT',imageUrl: 'profileGirl',date: '[Nov 22, 2018 03:47 PM]',text: 'The school remain closed tommorow due to heavy rain.',),
              ],
            ),
          )
        ],
      ),
    );
  }
}
