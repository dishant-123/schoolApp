import 'package:flutter/material.dart';
import '../screens/profile_screen.dart';
class ListTileCode extends StatelessWidget {
  String text;
  IconData iconType;
  String routeName;
  ListTileCode({@required this.text,@required this.iconType, this.routeName});
  @override
  Widget build(BuildContext context) {
    return ListTile(
        onTap: () {
                Navigator.pushNamed(context, routeName);
//                Navigator.pop(context);
        },
        leading: Icon(iconType, color: Colors.black,size: 30.0,),
        title: Text(text, style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15.0),),
    );
  }
}
