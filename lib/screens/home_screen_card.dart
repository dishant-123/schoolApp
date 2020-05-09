import 'package:flutter/material.dart';

class HomeScreenCard extends StatelessWidget {
  String imageName, text, routeName;
  HomeScreenCard({@required this.imageName, @required this.text, this.routeName});
  @override

  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: (){
            Navigator.pushNamed(context, routeName);
        },
        child: Container(
          margin: EdgeInsets.all(4.0),
          height: 130,
          child: Card(
            elevation: 6.0,
            child: Column(
                children: <Widget>[
                    SizedBox(
                        height: 10.0,
                    ),
                    Image.asset(
                        'assets/$imageName.jpg',
                        width: 70.0,
                        height: 70.0,
                    ),

                    SizedBox(
                        height: 5.0,
                    ),
                    Text(
                        text,
                         style: TextStyle(
                             fontFamily: 'Roboto',
                             fontSize: 15.0
                         ),
                    )
                ],
            ),
          ),
        ),
      ),
    );
  }
}
