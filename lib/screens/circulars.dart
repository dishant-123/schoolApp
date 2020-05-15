import 'package:flutter/material.dart';
import 'package:schoolapp/components/circulars_card.dart';
class Circular extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFCC7001),
        title: Center(
          child: Text(
            'Circulars',
            style: TextStyle(fontSize: 19.0),
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
        margin: EdgeInsets.all(10.0),
        child: ListView(
          children: <Widget>[
            CircularCard(pdfDate: '2020/12/03 08:47 am',pdfName: 'Note1.pdf',),
            CircularCard(pdfDate: '2020/11/04 07:47 am',pdfName: 'Note2.pdf',),
            CircularCard(pdfDate: '2019/11/04 03:48 am',pdfName: 'Note3.pdf',),
          ],
        ),
      ),
    );
  }
}
