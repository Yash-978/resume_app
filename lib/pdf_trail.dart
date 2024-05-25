// import 'dart:html';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:resume_app/Screens/EditPage/Activities/Activity.dart';
import 'package:resume_app/Screens/EditPage/Interests/interest.dart';
import 'package:resume_app/Screens/EditPage/Personal_info/personal_info.dart';
import 'package:resume_app/Screens/EditPage/Summary/summary.dart';
import 'package:resume_app/variable_pdf.dart';

class PdfTrail extends StatefulWidget {
  const PdfTrail({super.key});

  @override
  State<PdfTrail> createState() => _PdfTrailState();
}

class _PdfTrailState extends State<PdfTrail> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: BottomAppBar(
          height: 80,
          child: GestureDetector(
            onTap: () {
              Navigator.of(context).pushNamed('/pdf');
            },
            child: Container(
              height: 0.120,
              width: 0.200,
              decoration: BoxDecoration(
                color: Colors.deepPurpleAccent.shade200,
                borderRadius: BorderRadius.circular(30),
                border: Border.all(color: Colors.deepPurpleAccent.shade200),
              ),
              child: Center(
                  child: Text(
                'Generate Pdf',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
              )),
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 800,
                width: 385,
                decoration:
                    BoxDecoration(border: Border.all(color: Colors.black)),
                // color: Colors.red,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Row(
                      children: [
                        Container(
                          height: 720,
                          width: 150,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Color(0xffF1F1F1),
                          ),
                          child: Column(
                            children: [
                              // SizedBox(height: 10,),
                              Container(
                                height: 180,
                                width: 200,
                                decoration: BoxDecoration(
                                  image: (fileimage != null)
                                      ? DecorationImage(
                                          image: FileImage(fileimage!),
                                          fit: BoxFit.cover)
                                      : DecorationImage(
                                          image: AssetImage(
                                              'Assets/Images/Sample_User_Icon.png'),
                                          fit: BoxFit.cover),
                                ),
                              ),
                              Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Text(
                                    '${Person_Name}',
                                    style: TextStyle(
                                        color: Colors.deepOrange,
                                        fontSize: 15,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  Text(
                                    '${Headline}',
                                    style: TextStyle(
                                        color: Colors.black54,
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      Icon(
                                        Icons.call,
                                        color: Colors.black54,
                                        size: 15,
                                      ),
                                      Text(
                                        '${Person_Phone}',
                                        style: TextStyle(
                                            color: Colors.black54,
                                            fontSize: 12),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      Icon(
                                        Icons.mail_outline_rounded,
                                        color: Colors.black54,
                                        size: 15,
                                      ),
                                      Text(
                                        '${Person_Email}',
                                        style: TextStyle(
                                            color: Colors.black54,
                                            fontSize: 12),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      Icon(
                                        Icons.location_on_outlined,
                                        color: Colors.black54,
                                        size: 15,
                                      ),
                                      Spacer(),
                                      Text(
                                        '${Person_Address}',
                                        style: TextStyle(
                                            color: Colors.black54,
                                            fontSize: 12),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      Icon(
                                        Icons.language_outlined,
                                        color: Colors.black54,
                                        size: 15,
                                      ),
                                      Spacer(),
                                      Text(
                                        '${Person_Website}',
                                        style: TextStyle(
                                            color: Colors.black54,
                                            fontSize: 12),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      Icon(
                                        Icons.apple_sharp,
                                        color: Colors.black54,
                                        size: 15,
                                      ),
                                      Spacer(),
                                      Text(
                                        '${Person_Github}',
                                        style: TextStyle(
                                            color: Colors.black54,
                                            fontSize: 12),
                                      ),
                                    ],
                                  ),
                                  // Row(
                                  //   children: [
                                  //     Icon(
                                  //       Icons.summarize_outlined,
                                  //       color: Colors.deepOrange,
                                  //     ),
                                  //     Spacer(),
                                  //     Text(
                                  //       '{Person_Dob}',
                                  //       style: TextStyle(
                                  //           color: Colors.deepOrange,
                                  //           fontSize: 15),
                                  //     ),
                                  //   ],
                                  // ),
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.summarize_outlined,
                                        color: Colors.deepOrange,
                                      ),
                                      Text(
                                        '${Summary_ST}',
                                        style: TextStyle(
                                            color: Colors.deepOrange,
                                            fontSize: 12,
                                            fontWeight: FontWeight.w500),
                                      ),
                                    ],
                                  ),
                                  Text(
                                    '${Summary_}',
                                    style: TextStyle(
                                        color: Colors.deepOrange, fontSize: 10),
                                  ),
                                  Text(
                                    '${summary[selectsummary]}',
                                    style: TextStyle(
                                        color: Colors.black54, fontSize: 12),
                                  ),
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.tv_outlined,
                                        color: Colors.deepOrange,
                                        size: 15,
                                      ),
                                      Text(
                                        '${Skill_ST}',
                                        style: TextStyle(
                                            color: Colors.deepOrange,
                                            fontSize: 12,
                                            fontWeight: FontWeight.w500),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.tv_outlined,
                                        color: Colors.deepOrange,
                                        size: 15,
                                      ),
                                      Text(
                                        '${Skill_s}',
                                        style: TextStyle(
                                            color: Colors.deepOrange,
                                            fontSize: 12,
                                            fontWeight: FontWeight.w500),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.translate_outlined,
                                        size: 15,
                                        color: Colors.deepOrange,
                                      ),
                                      Text(
                                        'Languages',
                                        style: TextStyle(
                                            color: Colors.deepOrange,
                                            fontSize: 12,
                                            fontWeight: FontWeight.w500),
                                      ),
                                    ],
                                  ),
                                  ...List.generate(
                                    LanguageList.length,
                                    (index) => Row(
                                      children: [
                                        Icon(
                                          Icons.fiber_manual_record_rounded,
                                          color: Colors.black54,
                                          size: 10,
                                        ),
                                        Text(
                                          '${LanguageList[index]}',
                                          style: TextStyle(
                                              color: Colors.black54,
                                              fontSize: 12,
                                              fontWeight: FontWeight.w500),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.auto_stories_rounded,
                                        size: 15,
                                        color: Colors.deepOrange,
                                      ),
                                      Text(
                                        '${Activity_ST}',
                                        style: TextStyle(
                                            color: Colors.deepOrange,
                                            fontSize: 12,
                                            fontWeight: FontWeight.w500),
                                      ),
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      Text(
                                        '${Activity}',
                                        style: TextStyle(
                                          color: Colors.black54,
                                          fontSize: 12,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.emoji_events_outlined,
                                        size: 15,
                                        color: Colors.deepOrange,
                                      ),
                                      Text(
                                        '${Awards_SectionTitle}',
                                        style: TextStyle(
                                            color: Colors.deepOrange,
                                            fontSize: 12,
                                            fontWeight: FontWeight.w500),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.fiber_manual_record_rounded,
                                        size: 15,
                                        color: Colors.black54,
                                      ),
                                      Text(
                                        '${Awards}',
                                        style: TextStyle(
                                            color: Colors.deepOrange,
                                            fontSize: 12,
                                            fontWeight: FontWeight.w500),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.interests_outlined,
                                        size: 15,
                                        color: Colors.deepOrange,
                                      ),
                                      Text(
                                        '${Interest_SectionTitle}',
                                        style: TextStyle(
                                            color: Colors.deepOrange,
                                            fontSize: 12,
                                            fontWeight: FontWeight.w500),
                                      ),
                                    ],
                                  ),
                                  // ...List.generate(Interest_Controller_List.length, (index) =>
                                  // Column(
                                  //   children: [
                                  //     Icon(
                                  //       Icons.fiber_manual_record_rounded,
                                  //       size: 15,
                                  //       color: Colors.deepOrange,
                                  //     ),
                                  //     Text(
                                  //       '{Interest}',
                                  //       style: TextStyle(
                                  //           color: Colors.deepOrange,
                                  //           fontSize: 12,
                                  //           fontWeight: FontWeight.w500),
                                  //     ),
                                  //   ],
                                  // ),
                                  // )
                                ],
                              ),
                              // Row(
                              //   mainAxisAlignment:
                              //       MainAxisAlignment.spaceAround,
                              //   children: [
                              //     Icon(
                              //       Icons.contact_mail_outlined,
                              //       color: Colors.deepOrange,
                              //       size: 20,
                              //     ),
                              //     Text(
                              //       'Contact Detail',
                              //       style: TextStyle(
                              //           color: Colors.deepOrange, fontSize: 15),
                              //     ),
                              //   ],
                              // ),
                              //
                              // RichText(
                              //   text: TextSpan(
                              //     children: [
                              //       TextSpan(
                              //         text: 'Skill name',
                              //         style: TextStyle(
                              //             color: Colors.orange, fontSize: 15),
                              //       ),
                              //       TextSpan(
                              //         text: ' : {gender}',
                              //         style: TextStyle(
                              //             color: Colors.black, fontSize: 15),
                              //       ),
                              //     ],
                              //   ),
                              // ),
                              // Row(
                              //   children: [
                              //     Icon(
                              //       Icons.call,
                              //       color: Colors.deepOrange,
                              //     ),
                              //     Text(
                              //       '${Person_Phone}',
                              //       style: TextStyle(
                              //           color: Colors.black, fontSize: 10),
                              //     ),
                              //   ],
                              // ),
                            ],
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
