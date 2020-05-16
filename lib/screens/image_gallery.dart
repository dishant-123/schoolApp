import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:schoolapp/components/photo_gallery_card.dart';

class ImageGallery extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFCC7001),
        title: Center(
          child: Text(
            'Image Gallery',
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
      body: ListView(
        children: <Widget>[
            PhotoGalleryCard(photosTitle: 'Holiday',noOfPhotos: 12, photoUrl: 'holidays1.jfif',),
            PhotoGalleryCard(photosTitle: 'Diwali Celebration',noOfPhotos: 11, photoUrl: 'diwali1.jfif',),
            PhotoGalleryCard(photosTitle: 'School Activities',noOfPhotos: 09, photoUrl: 'activities.jfif',),
            PhotoGalleryCard(photosTitle: 'Robotic Class',noOfPhotos: 4, photoUrl: 'robotics1.jfif',),
        ],
      ),
    );
  }
}
