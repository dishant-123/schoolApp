import 'package:flutter/material.dart';
import '../components/drawer.dart';
import 'home_screen_all_card.dart';
import 'home_screen_profile_card.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: DrawerCode(),
      appBar: AppBar(
        backgroundColor: Color(0xFFCC7001),
        title: Text(
          'XYZ Public  School City, State, Country',
          style: TextStyle(fontSize: 19.0),
        ),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            HomeScreenProfileCard(),
            HomeScreenAllCards(),
          ],
        ),
      ),
    );
  }
}
