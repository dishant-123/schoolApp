import 'package:flutter/material.dart';

class PhotoGallerySingleImage extends StatelessWidget {
  String imageUrl;
  String date;
  PhotoGallerySingleImage({@required this.imageUrl, @required this.date});
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(15.0),
      elevation: 7.0,
      child: Column(
        children: <Widget>[
          Image.asset(
            'assets/$imageUrl.jpg',
            height: 300.0,
            width: 250.0,
          ),
          SizedBox(
            height: 10.0,
          ),
          Text(
            date,
            style: TextStyle(
              color: Colors.blueAccent,
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
