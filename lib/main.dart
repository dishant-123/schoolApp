import 'package:flutter/material.dart';
import 'package:schoolapp/components/PdfOpener.dart';
import 'package:schoolapp/components/photo_gallery_card.dart';
import 'package:schoolapp/screens/about_us.dart';
import 'package:schoolapp/screens/attedence.dart';
import 'package:schoolapp/screens/circulars.dart';
import 'package:schoolapp/screens/image_gallery.dart';
import 'package:schoolapp/screens/notice.dart';
import 'package:schoolapp/screens/photo_gallery_images.dart';
import 'package:schoolapp/screens/profile_screen.dart';
import 'package:schoolapp/components/videosGalleryCard.dart';
import 'package:schoolapp/screens/videoGallery.dart';
import 'screens/homeScreen.dart';
import 'screens/profile_screen.dart';
import 'screens/atendence_detail.dart';
import 'screens/homework.dart';
import './components/Calender.dart';
import 'screens/circulars.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => HomeScreen(),
        'profile': (context) => Profile(),
        'imageGallery': (context) => ImageGallery(),
        'imageGalleryImages': (context) => PhotoGalleryImages(),
        'aboutUs': (context) => AboutUs(),
        'notice': (context) => Notice(),
        'attendence': (context) => Attendence(),
        'attendenceDetail' : (context) => AttendenceDetail(),
        'homeWork' : (context) => HomeWork(),
        'calender' : (context) => Calender(),
        'circulars' :  (context) => Circular(),
        'pdfOpener' : (context) => PdfOpener(),
        'videoGallery' : (context) => VideoGallery(),
        'videoGalleryCard' : (context) => VideoGalleryCard(),
      },
    );
  }
}
