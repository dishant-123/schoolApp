import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:schoolapp/components/Calender.dart';

import 'package:schoolapp/components/homework_button.dart';
import '../components/home_work_card.dart';
import '../Constrants.dart';

class HomeWork extends StatefulWidget {
  @override
  _HomeWorkState createState() => _HomeWorkState();
}

class _HomeWorkState extends State<HomeWork> {
  String startDate = 'StartDate', endDate = 'End Date';
  @override

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFCC7001),
        title: Center(
          child: Text(
            'HomeWork',
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
      body: Container(
        color: Color(0xFFEAB94F),
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                SizedBox(
                  width: 7.0,
                ),
                HomeWorkButton(
                  date: startDate,
                  borderColor: Colors.black45,
                  color: Colors.white,
                  textColor: Colors.grey,
                ),
                SizedBox(
                  width: 7.0,
                ),
                HomeWorkButton(
                  date: endDate,
                  borderColor: Colors.black45,
                  color: Colors.white,
                  textColor: Colors.grey,
                ),
                SizedBox(
                  width: 7.0,
                ),
                HomeWorkButton(
                  date: 'Search',
                  borderColor: Colors.white,
                  color: Colors.green,
                  textColor: Colors.white,
                ),
                SizedBox(
                  width: 6.0,
                ),
              ],
            ),
            Expanded(
              child: ListView(
                children: <Widget>[
                  HomeWorkCard(
                    text: KDummyContent,
                    date: '22 Mar 2020',
                  ),
                  HomeWorkCard(
                    text: KDummyContent,
                    date: '22 Mar 2020',
                  ),
                  HomeWorkCard(
                    text: KDummyContent,
                    date: '22 Mar 2020',
                  ),
                  FlatButton(
                    child: Text('Hello'),
                    onPressed: (){
                      Navigator.pushNamed(context, 'calender',arguments: Calender(startDate: '123',));
                    },
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
