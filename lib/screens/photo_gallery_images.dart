import 'package:flutter/material.dart';
import 'package:schoolapp/components/photo_gallery_singleimage.dart';

class PhotoGalleryImages extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFCC7001),
        title: Center(
          child: Text(
            'Photos',
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
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
                PhotoGallerySingleImage(imageUrl: 'diwali1.jfif', date: '12/11/2020',),
                PhotoGallerySingleImage(imageUrl: 'diwali2.jfif', date: '12/11/2020',),
                PhotoGallerySingleImage(imageUrl: 'diwali6.jfif', date: '12/11/2020',),
                PhotoGallerySingleImage(imageUrl: 'diwali5..jfif', date: '12/11/2020',)
            ],
          ),
        ],
      ),
    );
  }
}
