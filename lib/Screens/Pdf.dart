import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:printing/printing.dart';
import 'package:resume_app/Screens/EditPage/Education_Icon/educationIcon.dart';
import 'package:resume_app/Screens/EditPage/Personal_info/personal_info.dart';
import 'package:resume_app/Screens/EditPage/Reference/reference.dart';
import 'package:resume_app/Screens/EditPage/Skills/skills.dart';

class PdfPage extends StatefulWidget {
  const PdfPage({super.key});

  @override
  State<PdfPage> createState() => _PdfPageState();
}

class _PdfPageState extends State<PdfPage> {
  @override
  Widget build(BuildContext context) {
    // double h =MediaQuery.of(context).size.height;
    // double w =MediaQuery.of(context).size.width;
    return PdfPreview(
      build: (format) => GenerateResumePdf(),
    );
  }
}

Future<Uint8List> GenerateResumePdf() async {
  final pdf = pw.Document();
  final image = pw.MemoryImage(fileimage!.readAsBytesSync());
  pdf.addPage(
    pw.Page(
      pageFormat: PdfPageFormat.a4,
      build: (context) => pw.Container(
        height: 600,
        width: double.infinity,
        decoration: pw.BoxDecoration(
            color: PdfColors.white,
            border: pw.Border.all(color: PdfColors.white, width: 2)),
        child: pw.Row(
          children: [
            pw.Column(crossAxisAlignment: pw.CrossAxisAlignment.start,
              children: [
                pw.Container(
                  height: 596,
                  width: 155,
                  decoration: pw.BoxDecoration(color: PdfColor.fromHex('#F1F1F1'), ),
                  child: pw.Padding(
                    padding:  pw.EdgeInsets.only(top: 10.0),
                    child: pw.Column(
                      crossAxisAlignment: pw.CrossAxisAlignment.start,
                      children: [
                        pw.Container(
                          height: 120,
                          width: 120,
                          decoration: pw.BoxDecoration(
                            shape: pw.BoxShape.circle,
                            color: PdfColors.red,
                          ),
                          child: pw.ClipRRect(
                              horizontalRadius: 56,
                              verticalRadius: 56,

                              child: pw.Image(image,
                                  fit: pw.BoxFit.cover)),
                        ),
                        pw.SizedBox(
                          height: 15,
                        ),
                        pw.Container(
                          height: 30,
                          width: 155,
                          decoration: pw.BoxDecoration(color: PdfColors.orange),
                          alignment: pw.Alignment.center,
                          child: pw.Text(
                            'Contact Details',
                            style: pw.TextStyle(
                                color: PdfColors.white,
                                fontSize: 18,
                                fontWeight: pw.FontWeight.bold),
                          ),
                        ),
                        pw.SizedBox(height: 10),
                        pw.Padding(
                          padding: pw.EdgeInsets.only(left: 8),
                          child: pw.RichText(
                            text: pw.TextSpan(
                              children: [
                                pw.TextSpan(
                                  text: ''
                                )
                              ]
                            )
                          )
                        )


                      ]
                    )
                  )
                )
              ]
            )
          ]
        )
      )
    ),
  );
  return pdf.save();
}
