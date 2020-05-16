import 'package:flutter/material.dart';
import 'package:schoolapp/components/about_us_card.dart';

class AboutUs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFFCC7001),
          title: Center(
            child: Text(
              'About School',
              style: TextStyle(fontSize: 16.0),
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
            Container(
              height: 210.0,
              child: Card(
                child: Center(
                  child: Image.asset(
                    'assets/xyz.png',
                    width: 150.0,
                    height: 150.0,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Center(
              child: Text(
                'XYZ Public School, ' +
                    '\n' +
                    '              City, State',
                style: TextStyle(
                    fontSize: 25.0,
                    color: Color(0xFFCC7000),
                    fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
                height: 10.0,
            ),
            Expanded(
              child: ListView(
                children: <Widget>[
                  AboutUsCard(
                    singleKey: 'Contact No :',
                    singleValue: '999185740',
                  ),
                  AboutUsCard(
                    singleKey: 'Email :',
                    singleValue: 'dishantdua8956@gmail.com',
                  ),
                  AboutUsCard(
                    singleKey: 'Board: ',
                    singleValue: 'School No.0000',
                  ),
                  AboutUsCard(
                    singleKey: 'Board: ',
                    singleValue: 'School No.1111',
                  ),
                  AboutUsCard(
                    singleKey: 'Adress: ',
                    singleValue: 'City(State)- 124112',
                  ),
                  AboutUsCard(
                    singleKey: 'Phone no.: ',
                    singleValue: '888888888',
                  ),
                ],
              ),
            )
          ],
        ));
  }
}
