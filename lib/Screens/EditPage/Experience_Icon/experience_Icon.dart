import 'package:flutter/material.dart';

import

'../Education_Icon/UDF_education_icon.dart';

class ExperienceIcon extends StatefulWidget {
  const ExperienceIcon({super.key});

  @override
  State<ExperienceIcon> createState() => _ExperienceIconState();
}

class _ExperienceIconState extends State<ExperienceIcon> {
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'Experiance',
            style: TextStyle(),
          ),
          bottom: TabBar(
            tabs: [
              Tab(
                child: Text(
                  'Experience',
                  style: TextStyle(color: Colors.black, fontSize: 20),
                ),
              ),
              Tab(
                child: Text(
                  'Example',
                  style: TextStyle(color: Colors.black, fontSize: 20),
                ),
              ),
              Tab(
                child: Text(
                  'Help',
                  style: TextStyle(color: Colors.black, fontSize: 20),
                ),
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Column(
              children: [
                SizedBox(
                  height: h * 0.02,
                ),
                Container(
                  height: h * 0.120,
                  width: w * 0.850,
                  decoration: BoxDecoration(
                    // boxShadow: [
                    // BoxShadow(
                    //   // blurStyle: BlurStyle.outer,
                    //   color: Colors.black12,
                    //   spreadRadius: BorderSide.strokeAlignOutside,
                    //   blurStyle: BlurStyle.outer,
                    //   // offset: Offset.fromDirection(BorderSide.strokeAlignOutside)
                    // )
                    // ],
                    border: Border.all(
                      // color: Colors.black,
                    ),
                    borderRadius: BorderRadius.circular(14),
                  ),
                  child: Column(
                    children: [
                      Text(
                        'Section Title',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: BorderSide(
                            color: Colors.black,
                            width: 1,
                          ),
                        ),
                          focusedBorder:  OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                            borderSide: BorderSide(
                              color: Colors.deepPurpleAccent.shade200,
                              width: 1,
                            ),

                          )
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}



