import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:schoolapp/components/videosGalleryCard.dart';

class VideoGallery extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFFCC7001),
          title: Center(
            child: Text(
              'Video Gallery',
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
            SizedBox(
              height: 10.0,
            ),
            VideoGalleryCard(),
            VideoGalleryCard(),
            VideoGalleryCard(),
          ],
        ));
  }
}
