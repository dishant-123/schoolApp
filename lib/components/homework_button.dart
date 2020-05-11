import 'package:flutter/material.dart';

class HomeWorkButton extends StatelessWidget {
  String date;
  Color borderColor, color, textColor;
  HomeWorkButton({@required this.date,this.color,this.borderColor,this.textColor});
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: FlatButton(
        color: color,
        textColor: textColor,
        disabledColor: Colors.grey,
        disabledTextColor: Colors.black,
        splashColor: Colors.white,
        padding: EdgeInsets.only(left: 25.0, right: 25.0, top: 8.0, bottom: 8.0),
        shape: RoundedRectangleBorder(
          side: BorderSide(
            color:borderColor,
            width: 2,
          ),
          borderRadius: BorderRadius.circular(20),
        ),
        onPressed: () {},
        child: Text(
          date,
          style: TextStyle(fontSize: 20.0),
        ),
      ),
    );
  }
}
