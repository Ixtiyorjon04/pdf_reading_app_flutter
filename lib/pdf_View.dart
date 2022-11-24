import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

import 'files.dart';

class PdfView extends StatelessWidget {
  PdfView({super.key, required this.index});

  int index;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          name[index],
          style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontStyle: FontStyle.italic),
        ),
        centerTitle: true,
      ),
      body: SfPdfViewer.asset(pdf[index]),
    );
  }
}
