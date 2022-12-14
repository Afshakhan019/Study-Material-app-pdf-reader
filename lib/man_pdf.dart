import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';
import 'package:flutter/material.dart';
import 'package:sponsorcontent/catalog_manage.dart';

class ManPdf extends StatefulWidget {
  const ManPdf({required this.doc, Key? key}) : super(key: key);
  final Item doc;

  @override
  State<ManPdf> createState() => _PdfState();
}

class _PdfState extends State<ManPdf> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: Text(
          widget.doc.name,
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.black,
        // foregroundColor: Colors.black,
        // shadowColor: Colors.transparent,
        centerTitle: true,
      ),
      body: SfPdfViewer.network(widget.doc.url),
    );
  }
}
