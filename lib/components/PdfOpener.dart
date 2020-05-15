import 'package:flutter/material.dart';
import 'package:flutter_plugin_pdf_viewer/flutter_plugin_pdf_viewer.dart';

class PdfOpener extends StatefulWidget {
  final String filePath;
  PdfOpener({this.filePath});
  @override
  _PdfOpenerState createState() => _PdfOpenerState();
}

class _PdfOpenerState extends State<PdfOpener> {
  String filePath ;
  bool _isLoading;
  PDFDocument _pdf;
  @override
  void initState() {
    super.initState();
//    filePath = ModalRoute.of(context).settings.arguments;{
//    print(widget.filePath(context));
    initPdf();
  }

  initPdf() async {
    setState(() {
      _isLoading = true;
    });
    PDFDocument doc = await PDFDocument.fromAsset('assets/Note1.pdf');
//    PDFDocument doc = await PDFDocument.fromURL(
//        'http://www.africau.edu/images/default/sample.pdf');
    setState(() {
      _pdf = doc;
      _isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFFCC7001),
          title: Center(
            child: Text(
              'Circulars',
              style: TextStyle(fontSize: 19.0),
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
        body: _isLoading == null
            ? Center(
                child: CircularProgressIndicator(),
              )
            : PDFViewer(
                document: _pdf,
                showPicker: true,
                showNavigation: false,
              ));
  }
}


