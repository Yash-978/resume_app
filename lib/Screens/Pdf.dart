import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:printing/printing.dart';
import 'package:resume_app/Screens/EditPage/Education_Icon/educationIcon.dart';
import 'package:resume_app/Screens/EditPage/Personal_info/personal_info.dart';
import 'package:resume_app/Screens/EditPage/Reference/reference.dart';
import 'package:resume_app/Screens/EditPage/Skills/skills.dart';

import '../variable_pdf.dart';
import 'EditPage/Interests/interest.dart';
import 'EditPage/Summary/summary.dart';

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
Future<Uint8List> GenerateResumePdf()
async{
  final pdf= pw.Document();
  final image= pw.MemoryImage(fileimage!.readAsBytesSync());
  pdf.addPage(pw.Page(
    // pageFormat: PdfPageFormat.a4,
    build: (context) =>  pw.Container(
      height: 900,
      width: 900,
      decoration:
      pw.BoxDecoration(border: pw.Border.all(color: PdfColors.black)),
      // color: Colors.red,
      child: pw.Row(mainAxisAlignment: pw.MainAxisAlignment.spaceAround,
        children: [
          pw.Container(
            height: 720,
            width: 200,
            decoration: pw.BoxDecoration(
              borderRadius: pw.BorderRadius.circular(15),
              color: PdfColor.fromHex('F1F1F1'),
            ),
            child: pw.Column(
              children: [
                // SizedBox(height: 10,),
                pw.Container(
                  height: 130,
                  width: 130,
                  decoration: pw.BoxDecoration(
                    shape: pw.BoxShape.circle,
                    color: PdfColors.red,
                  ),
                  child: pw.ClipRRect(
                      horizontalRadius: 62,
                      verticalRadius: 62,
                      child: pw.Image(image,
                          fit: pw.BoxFit.cover)),
                ),
                // pw.Container(
                //   height: 130,
                //   width: 130,
                //   decoration: pw.BoxDecoration(
                //     image: (fileimage!=null)? pw.DecorationImage(
                //       image:
                //     ),
                //     shape: pw.BoxShape.circle,
                //     color: PdfColors.red,
                //   ),
                //   child: pw.ClipRRect(
                //       horizontalRadius: 62,
                //       verticalRadius: 62,
                //       child: pw.Image(image,
                //           fit: pw.BoxFit.cover)),
                // ),

                pw.Column(
                  mainAxisAlignment:
                  pw.MainAxisAlignment.spaceAround,
                  children: [
                    pw.Text(
                      '${Person_Name}',
                      style: pw.TextStyle(
                          color: PdfColors.deepOrange,
                          fontSize: 15,
                          // fontWeight: pw.FontWeight.4
                      ),
                    ),

                    pw.Text(
                      '${Headline}',
                      style: pw.TextStyle(
                          color: PdfColors.black,
                          fontSize: 12,
                          // fontWeight: FontWeight.w500
                      ),
                    ),
                    pw.Row(
                      mainAxisAlignment:
                      pw.MainAxisAlignment.spaceAround,
                      children: [
                        // Icon(
                        //   Icons.call,
                        //   color: Colors.black54,
                        //   size: 15,
                        // ),
                        pw.Text(
                          '${Person_Phone}',
                          style: pw.TextStyle(
                              color: PdfColors.black,
                              fontSize: 12),
                        ),
                      ],
                    ),
                    pw.Row(
                      mainAxisAlignment:
                      pw.MainAxisAlignment.spaceAround,
                      children: [
                        // Icon(
                        //   Icons.mail_outline_rounded,
                        //   color: Colors.black54,
                        //   size: 15,
                        // ),
                        pw.Text(
                          '${Person_Email}',
                          style: pw.TextStyle(
                              color: PdfColors.black,
                              fontSize: 12),
                        ),
                      ],
                    ),
                    pw.Row(
                      mainAxisAlignment:
                      pw.MainAxisAlignment.spaceAround,
                      children: [
                        // Icon(
                        //   Icons.location_on_outlined,
                        //   color: Colors.black54,
                        //   size: 15,
                        // ),
                        // pw.Spacer(),
                        pw.Text(
                          '${Person_Address}',
                          style: pw.TextStyle(
                              color: PdfColors.black,
                              fontSize: 12),
                        ),
                      ],
                    ),
                    pw.Row(
                      mainAxisAlignment:
                      pw.MainAxisAlignment.spaceAround,
                      children: [
                        // Icon(
                        //   Icons.language_outlined,
                        //   color: Colors.black54,
                        //   size: 15,
                        // ),
                        // Spacer(),
                        pw.Text(
                          '${Person_Website}',
                          style: pw.TextStyle(
                              color: PdfColors.black,
                              fontSize: 12),
                        ),
                      ],
                    ),
                    pw.Row(
                      mainAxisAlignment:
                      pw.MainAxisAlignment.spaceAround,
                      children: [
                        // Icon(
                        //   Icons.apple_sharp,
                        //   color: Colors.black54,
                        //   size: 15,
                        // ),
                        // Spacer(),
                        pw.Text(
                          '${Person_Github}',
                          style: pw.TextStyle(
                              color: PdfColors.black,
                              fontSize: 12),
                        ),
                      ],
                    ),
                    pw.Row(
                      children: [
                        // Icon(
                        //   Icons.summarize_outlined,
                        //   color: Colors.deepOrange,
                        // ),
                        pw.Text(
                          '${Summary_ST}',
                          style: pw.TextStyle(
                              color: PdfColors.deepOrange,
                              fontSize: 12,
                              // fontWeight: FontWeight.w500
                          ),
                        ),
                      ],
                    ),
                    pw.Text(
                      '${Summary_}',
                      style: pw.TextStyle(
                          color: PdfColors.deepOrange, fontSize: 10),
                    ),
                    pw.Text(
                      '${summary[selectsummary]}',
                      style: pw.TextStyle(
                          color: PdfColors.black, fontSize: 12),
                    ),
                    pw.Row(
                      children: [
                        // Icon(
                        //   Icons.tv_outlined,
                        //   color: Colors.deepOrange,
                        //   size: 15,
                        // ),
                        pw.Text(
                          '${Skill_ST}',
                          style: pw.TextStyle(
                              color: PdfColors.deepOrange,
                              fontSize: 12,
                              // fontWeight: FontWeight.w500
                          ),
                        ),
                      ],
                    ),
                    pw.Row(
                      children: [
                        // Icon(
                        //   Icons.tv_outlined,
                        //   color: Colors.deepOrange,
                        //   size: 15,
                        // ),
                        pw.Text(
                          '${Skill_s}',
                          style: pw.TextStyle(
                              color: PdfColors.deepOrange,
                              fontSize: 12,
                              // fontWeight: FontWeight.w500
                          ),
                        ),
                      ],
                    ),
                    pw.Row(
                      children: [
                        // Icon(
                        //   Icons.translate_outlined,
                        //   size: 15,
                        //   color: Colors.deepOrange,
                        // ),
                        pw.Text(
                          'Languages',
                          style: pw.TextStyle(
                              color: PdfColors.deepOrange,
                              fontSize: 12,
                              // fontWeight: FontWeight.w500
                          ),
                        ),
                      ],
                    ),
                    ...List.generate(
                      LanguageList.length,
                          (index) => pw.Row(
                        children: [
                          // Icon(
                          //   Icons.fiber_manual_record_rounded,
                          //   color: Colors.black54,
                          //   size: 10,
                          // ),
                          pw.Text(
                            '${LanguageList[index]}',
                            style: pw.TextStyle(
                                color: PdfColors.black,
                                fontSize: 12,
                                // fontWeight: FontWeight.w500
                            ),
                          ),
                        ],
                      ),
                    ),
                    pw.Row(
                      children: [
                        // Icon(
                        //   Icons.auto_stories_rounded,
                        //   size: 15,
                        //   color: Colors.deepOrange,
                        // ),
                        pw.Text(
                          '${Activity_ST}',
                          style: pw.TextStyle(
                              color: PdfColors.deepOrange,
                              fontSize: 12,
                              // fontWeight: FontWeight.w500
                          ),
                        ),
                      ],
                    ),
                    pw.Column(
                      children: [
                        pw.Text(
                          '${Activity}',
                          style: pw.TextStyle(
                            color: PdfColors.black,
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                    pw.Row(
                      children: [
                        // Icon(
                        //   Icons.emoji_events_outlined,
                        //   size: 15,
                        //   color: Colors.deepOrange,
                        // ),
                        pw.Text(
                          '${Awards_SectionTitle}',
                          style: pw.TextStyle(
                              color: PdfColors.deepOrange,
                              fontSize: 12,
                              // fontWeight: FontWeight.w500
                          ),
                        ),
                      ],
                    ),
                    pw.Row(
                      children: [
                        // Icon(
                        //   Icons.fiber_manual_record_rounded,
                        //   size: 15,
                        //   color: Colors.black54,
                        // ),
                        pw.Text(
                          '${Awards}',
                          style: pw.TextStyle(
                              color: PdfColors.deepOrange,
                              fontSize: 12,
                              // fontWeight: FontWeight.w500
                          ),
                        ),
                      ],
                    ),
                    pw.Row(
                      children: [
                        // Icon(
                        //   Icons.interests_outlined,
                        //   size: 15,
                        //   color: Colors.deepOrange,
                        // ),
                        pw.Text(
                          '${Interest_SectionTitle}',
                          style: pw.TextStyle(
                              color: PdfColors.deepOrange,
                              fontSize: 12,
                              // fontWeight: FontWeight.w500
                          ),
                        ),
                      ],
                    ),
                    ...List.generate(
                      Interest_Controller_List.length,
                          (index) => pw.Column(
                        children: [
                          // Icon(
                          //   Icons.fiber_manual_record_rounded,
                          //   size: 15,
                          //   color: Colors.deepOrange,
                          // ),
                          pw.Text(
                            '${Interest_Controller_List[index].txtinterest!.text}',
                            style: pw.TextStyle(
                                color: PdfColors.deepOrange,
                                fontSize: 12,
                                // fontWeight: FontWeight.w500
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
          pw.Container(
            height: 720,
            width: 250,
            decoration: pw.BoxDecoration(
              borderRadius: pw.BorderRadius.circular(15),
              color: PdfColors.white,
            ),
            child: pw.Column(
              children: [
                pw.SizedBox(height: 5),
                pw.Container(
                  height: 25,
                  width: 200,
                  decoration: pw.BoxDecoration(
                    borderRadius: pw.BorderRadius.circular(15),
                    color: PdfColors.deepOrange,
                  ),
                  child: pw.Row(
                    mainAxisAlignment:
                    pw.MainAxisAlignment.spaceEvenly,
                    children: [
                      // Icon(
                      //   Icons.card_giftcard_rounded,
                      //   color: Colors.white,
                      //   size: 18,
                      // ),
                      pw.Text(
                        '${Exp_ST}',
                        style: pw.TextStyle(
                          color: PdfColors.white,
                        ),
                      ),
                    ],
                  ),
                ),
                pw.Row(
                  children: [
                    pw.Text(
                      '${Exp_Company}',
                      style: pw.TextStyle(
                          color: PdfColors.black, fontSize: 10),
                    ),
                    pw.Spacer(),
                    pw.Text(
                      'May 2024-Present',
                      style: pw.TextStyle(
                          color: PdfColors.black, fontSize: 10),
                    ),
                  ],
                ),
                pw.Row(
                  children: [
                    pw.Text(
                      '${Exp_Jobtitle}',
                      style: pw.TextStyle(
                          color: PdfColors.black, fontSize: 10),
                    ),
                  ],
                ),
                pw.SizedBox(height: 5),
                pw.Container(
                  height: 25,
                  width: 200,
                  decoration: pw.BoxDecoration(
                    borderRadius: pw.BorderRadius.circular(15),
                    color: PdfColors.deepOrange,
                  ),
                  child: pw.Row(
                    mainAxisAlignment:
                    pw.MainAxisAlignment.spaceEvenly,
                    children: [
                      // Icon(
                      //   Icons.card_giftcard_rounded,
                      //   color: Colors.white,
                      //   size: 18,
                      // ),
                      pw.Text(
                        '${Edu_ST}',
                        style: pw.TextStyle(
                          color: PdfColors.white,
                        ),
                      ),
                    ],
                  ),
                ),
                pw.Row(
                  children: [
                    pw.Text(
                      '${Edu_School}',
                      style: pw.TextStyle(
                          color: PdfColors.black, fontSize: 10),
                    ),
                    pw.Spacer(),
                    pw.Text(
                      '#Education_year#',
                      style: pw.TextStyle(
                          color: PdfColors.black, fontSize: 10),
                    ),
                  ],
                ),
                pw.Row(
                  children: [
                    pw.Text(
                      '${Edu_Course}',
                      style: pw.TextStyle(
                          color: PdfColors.black, fontSize: 10),
                    ),
                  ],
                ),
                pw.Row(
                  children: [
                    pw.Text(
                      '${Edu_Grade}',
                      style: pw.TextStyle(
                          color: PdfColors.black, fontSize: 10),
                    ),
                  ],
                ),
                pw.SizedBox(height: 10),
                pw.Container(
                  height: 25,
                  width: 200,
                  decoration: pw.BoxDecoration(
                    borderRadius: pw.BorderRadius.circular(15),
                    color: PdfColors.deepOrange,
                  ),
                  child: pw.Row(
                    mainAxisAlignment:
                    pw.MainAxisAlignment.spaceEvenly,
                    children: [
                      // Icon(
                      //   Icons.card_giftcard_rounded,
                      //   color: Colors.white,
                      //   size: 18,
                      // ),
                      pw.Text(
                        '${Project_ST}',
                        style: pw.TextStyle(
                          color: PdfColors.white,
                        ),
                      ),
                    ],
                  ),
                ),
                // Row(
                //   children: [
                //     Text(
                //       '${Project_Title}',
                //       style: TextStyle(
                //           color: Colors.black, fontSize: 10),
                //     ),
                //   ],
                // ),
                pw.SizedBox(height: 5),
                pw.RichText(
                  text: pw.TextSpan(
                    children: [
                      pw.TextSpan(
                          text: '${Project_Title}',
                          style: pw.TextStyle(
                              color: PdfColors.deepOrange,
                              fontSize: 15)),

                    ],
                  ),
                ),
                pw.SizedBox(height: 5),
                pw.Text(
                  overflow: pw.TextOverflow.clip,
                  '${Project_Detail}',
                  style: pw.TextStyle(
                      color: PdfColors.black, fontSize: 10),
                ),
                pw.SizedBox(height: 10),
                pw.Container(
                  height: 25,
                  width: 200,
                  decoration: pw.BoxDecoration(
                    borderRadius:pw. BorderRadius.circular(15),
                    color: PdfColors.deepOrange,
                  ),
                  child: pw.Row(
                    mainAxisAlignment:
                    pw.MainAxisAlignment.spaceEvenly,
                    children: [
                      // Icon(
                      //   Icons.card_giftcard_rounded,
                      //   color: Colors.white,
                      //   size: 18,
                      // ),
                      pw.Text(
                        '${Pub_ST}',
                        style: pw.TextStyle(
                          color: PdfColors.white,
                        ),
                      ),
                    ],
                  ),
                ),
                pw.SizedBox(height: 5),
                pw.Row(
                  children: [
                    pw.Text(
                      '${Pub_title}',
                      style: pw.TextStyle(
                          color: PdfColors.black, fontSize: 15),
                    ),
                  ],
                ),
                pw.SizedBox(height: 5),
                pw. Text(
                  '${Pub_Detail}',
                  style: pw.TextStyle(
                      color: PdfColors.black, fontSize: 10),
                ),
                pw.SizedBox(height: 10),
                pw.Container(
                  height: 25,
                  width: 200,
                  decoration: pw.BoxDecoration(
                    borderRadius:pw. BorderRadius.circular(15),
                    color: PdfColors.deepOrange,
                  ),
                  child: pw.Row(
                    mainAxisAlignment:
                    pw.MainAxisAlignment.spaceEvenly,
                    children: [
                      // Icon(
                      //   Icons.card_giftcard_rounded,
                      //   color: Colors.white,
                      //   size: 18,
                      // ),
                      pw.Text(
                        '${Refer_ST}',
                        style:pw.TextStyle(
                          color: PdfColors.white,
                        ),
                      ),
                    ],
                  ),
                ),
                pw.SizedBox(height: 5),
                pw.Row(
                  children: [
                    pw.Text(
                      '${Refer_Name}',
                      style: pw.TextStyle(
                          color: PdfColors.black, fontSize: 10),
                    ),
                  ],
                ),
                pw.Row(
                  children: [
                    pw.Text(
                      '${Refer_CompanyName}',
                      style: pw.TextStyle(
                          color: PdfColors.black, fontSize: 10),
                    ),
                  ],
                ),
                pw.Row(
                  children: [
                    pw.Text(
                      '${Refer_jobTitle}',
                      style: pw.TextStyle(
                          color: PdfColors.black, fontSize: 10),
                    ),
                  ],
                ),
                pw.Row(
                  children: [
                    pw.Text(
                      '${Refer_Phone}',
                      style: pw.TextStyle(
                          color: PdfColors.black, fontSize: 10),
                    ),
                    pw.Spacer(),
                    pw.Text(
                      '${Refer_Email}',
                      style: pw.TextStyle(
                          color: PdfColors.black, fontSize: 10),
                    ),
                  ],
                ),
                pw.SizedBox(height: 10),
                pw.Container(
                  height: 25,
                  width: 200,
                  decoration: pw.BoxDecoration(
                    borderRadius: pw.BorderRadius.circular(15),
                    color: PdfColors.deepOrange,
                  ),
                  child: pw.Row(
                    mainAxisAlignment:
                    pw.MainAxisAlignment.spaceEvenly,
                    children: [
                      // Icon(
                      //   Icons.card_giftcard_rounded,
                      //   color: Colors.white,
                      //   size: 18,
                      // ),
                      pw.Text(
                        '${AddInfo_ST}',
                        style: pw.TextStyle(
                          color: PdfColors.white,
                        ),
                      ),
                    ],
                  ),
                ),
                pw.SizedBox(height: 5),
                pw.Text(
                  '${AddInfo}',
                  style: pw.TextStyle(
                      color: PdfColors.black, fontSize: 10),
                ),
              ],
            ),
          )
        ],
      ),
    ),

  ));
  return pdf.save();
}
