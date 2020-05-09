import 'package:flutter/material.dart';
import 'package:schoolapp/components/profile_card.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFCC7001),
        title: Text(
          'Your Profile',
          style: TextStyle(fontSize: 16.0),
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
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          CircleAvatar(
            radius: 60.0,
            backgroundImage: AssetImage('assets/profile.jpg'),
          ),
          Text(
            'Ramshul Dua',
            style: TextStyle(
                fontSize: 40.0,
                color: Colors.black,
                fontWeight: FontWeight.bold),
          ),
          Text(
            'Maharaja Agarsen Public School',
            style: TextStyle(
                color: Colors.black54,
                fontFamily: 'Source Sans Pro',
                fontSize: 17.0,
                letterSpacing: 4),
          ),
          SizedBox(
            height: 20.0,
            width: 150.0,
            child: Divider(color: Colors.white),
          ),
          ProfileCard(iconType: Icons.phone, text: '+91-8950618970'),
          ProfileCard(iconType: Icons.email, text: 'raman@gmail.com'),
          ProfileCard(iconType: Icons.location_city, text: '219/12, Meham, Rohtak, Haryana, 124112'),
          ProfileCard(iconType: Icons.person_add, text: 'Mr. Om Parkash'),
          ProfileCard(iconType: Icons.person_add, text: 'Mrs. Anjali Devi'),
          ProfileCard(iconType: Icons.date_range,text: '01-05-2006',)
        ],
      ),
    );
  }
}
