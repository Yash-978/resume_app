// import 'dart:typed_data';
//
// import 'package:flutter/material.dart';
// import 'package:pdf/pdf.dart';
// import 'package:pdf/widgets.dart' as pw;
// import 'package:printing/printing.dart';
// import 'package:resume_app/Screens/EditPage/Personal_info/personal_info.dart';
// import 'package:resume_app/Screens/EditPage/Reference/reference.dart';
// import 'package:resume_app/Screens/EditPage/Skills/skills.dart';
//
// class PdfPage extends StatefulWidget {
//   const PdfPage({super.key});
//
//   @override
//   State<PdfPage> createState() => _PdfPageState();
// }
//
// class _PdfPageState extends State<PdfPage> {
//   @override
//   Widget build(BuildContext context) {
//     // double h =MediaQuery.of(context).size.height;
//     // double w =MediaQuery.of(context).size.width;
//     return PdfPreview(
//       build: (format) => GenerateResumePdf(),
//     );
//   }
// }
//
// // Future<Uint8List> GenerateResumePdf()
// //
// //   async final pdf = pw.Document();
// //   final image = pw.MemoryImage(fileimage!.readAsBytesSync());
// //   pdf.addPage(pw.Page(
// //     build: (context) => pw.Row(
// //       children: [
// //         pw.Container(
// //             height: double.infinity,
// //             width: 600,
// //           color: PdfColors.white,
// //
// //         ),
// //         pw.Text(''),
// //       ]
// //     )
// //   ))
// //   return pdf.save();
// // }
//
//
