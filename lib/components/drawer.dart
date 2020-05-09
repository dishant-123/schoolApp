import 'package:flutter/material.dart';
import 'listTile.dart';

class DrawerCode extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(

        children: <Widget>[
          DrawerHeader(
            decoration: BoxDecoration(
              image: DecorationImage(

                image: AssetImage('assets/schoolIcon.jpg'),
              ),
              color: Color(0xFFE0E1CF),
            ),
          ),

          ListTileCode(text: 'Home', iconType: Icons.home),
          ListTileCode(text: 'Profile', iconType: Icons.account_circle, navigateScreen: 'profile',),
          ListTileCode(text: 'Siblings', iconType: Icons.people),
          ListTileCode(text: 'About School', iconType: Icons.school),
          ListTileCode(text: 'Notifications', iconType: Icons.notifications),
          ListTileCode(text: 'TechnicalSupport', iconType: Icons.call),
          ListTileCode(text: 'Emergency No.', iconType: Icons.call_to_action),
          ListTileCode(text: 'Logout', iconType: Icons.exit_to_app),
        ],
      ),
    );
  }
}
