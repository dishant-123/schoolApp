import 'package:flutter/material.dart';
import 'package:schoolapp/components/PdfOpener.dart';

class CircularCard extends StatelessWidget {
  String pdfName, pdfDate;
  CircularCard({@required this.pdfDate,@required this.pdfName});
  @override
  Widget build(BuildContext context) {

    return GestureDetector(
      onTap: () {
//          Navigator.pushNamed(context, 'pdfOpener', arguments: PdfOpener(
//            filePath: pdfName,
//          ));
            Navigator.push(context, MaterialPageRoute(builder : (context) =>PdfOpener(filePath:pdfName,)),);
      },
      child: Card(
         margin: EdgeInsets.only(bottom: 20.0),
        elevation: 5.0,
        child: Row(
          children: <Widget>[
            CircleAvatar(
              radius: 45.0,
              backgroundImage: AssetImage('assets/pdfImage.png'),
            ),
            SizedBox(
              width: 20.0,
            ),
            Column(
              children: <Widget>[
                Text(
                  pdfName,
                  style: TextStyle(fontSize: 20.0),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Text(
                  '[$pdfDate]',
                  style: TextStyle(color: Colors.blueAccent, fontSize: 15.0),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
