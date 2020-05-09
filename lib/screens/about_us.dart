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
                color: Color(0xFFCBD6DB),
                child: Center(
                  child: Image.asset(
                    'assets/schoolIcon.jpg',
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
                'Maharaja Agarsen Public School, ' +
                    '\n' +
                    '              Meham, Rohtak',
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
                    singleValue: '9991857402',
                  ),
                  AboutUsCard(
                    singleKey: 'Email :',
                    singleValue: 'dishantdua8956@gmail.com',
                  ),
                  AboutUsCard(
                    singleKey: 'Board: ',
                    singleValue: 'School No.3844',
                  ),
                  AboutUsCard(
                    singleKey: 'Board: ',
                    singleValue: 'School No.3844',
                  ),
                  AboutUsCard(
                    singleKey: 'Adress: ',
                    singleValue: 'Meham(Rohtak)- 124112',
                  ),
                  AboutUsCard(
                    singleKey: 'Phone no.: ',
                    singleValue: '8222011603',
                  ),
                ],
              ),
            )
          ],
        ));
  }
}
