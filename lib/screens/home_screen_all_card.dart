import 'package:flutter/material.dart';
import 'home_screen_card.dart';

class HomeScreenAllCards extends StatefulWidget {
  @override
  _HomeScreenAllCardsState createState() => _HomeScreenAllCardsState();
}

class _HomeScreenAllCardsState extends State<HomeScreenAllCards> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView(
        children: <Widget>[
          Row(
            children: <Widget>[
              HomeScreenCard(imageName: 'attendence',text: 'Attendence',routeName: 'attendence',),
              HomeScreenCard(imageName: 'homework',text: 'HomeWork',routeName: 'homeWork',),
              HomeScreenCard(imageName: 'homework_activity',text: 'Homework \n Activity',),
            ],
          ),
          Row(
            children: <Widget>[
              HomeScreenCard(imageName: 'notice',text: 'Notice',routeName: 'notice',),
              HomeScreenCard(imageName: 'events',text: 'Events',),
              HomeScreenCard(imageName: 'marks',text: 'Marks',),
            ],
          ),
          Row(
            children: <Widget>[
              HomeScreenCard(imageName: 'circular',text: 'Circulars',),
              HomeScreenCard(imageName: 'datesheet',text: 'Syllabus \nDateSheet',),
              HomeScreenCard(imageName: 'photoGallery',text: 'Photo Gallery', routeName: 'imageGallery',),
            ],
          ),
          Row(
            children: <Widget>[
              HomeScreenCard(imageName: 'videoGallery',text: 'Video Gallery',),
              HomeScreenCard(imageName: 'indicipline',text: 'Indicipline',),
              HomeScreenCard(imageName: 'emergency',text: 'Emergency \n Message',),
            ],
          ),
        ],
      ),
    );
  }
}
