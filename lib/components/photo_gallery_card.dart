import 'package:flutter/material.dart';

class PhotoGalleryCard extends StatelessWidget {
    String photosTitle;
    int noOfPhotos;
    String photoUrl;
    PhotoGalleryCard({@required this.noOfPhotos,@required  this.photosTitle, this.photoUrl});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
            Navigator.pushNamed(context, 'imageGalleryImages');
      },
      child: Card(
        color: Colors.grey.shade200,
        margin: EdgeInsets.all(7.0),
        elevation: 6.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Row(
          children: <Widget>[
            Image.asset(
              'assets/$photoUrl',
              height: 125.0,
              width: 150.0,
            ),
            SizedBox(
              width: 20.0,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  photosTitle,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22.0),
                ),
                Text('$noOfPhotos photos')
              ],
            )
          ],
        ),
      ),
    );
  }
}
