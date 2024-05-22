import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Education_Icon/UDF_education_icon.dart';

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
                experience_Info(h * 0.110, w * 0.850, section_Title: 'Section Title', expHint_Text: 'Experience'),
                SizedBox(
                  height: h * 0.020,
                ),
                Container(
                  height: h * 0.060,
                  width: w * 0.850,
                  decoration: BoxDecoration(
                    // color: Colors.deepPurpleAccent.shade200,
                    border: Border.all(
                      color: Colors.deepPurpleAccent.shade200,
                    ),
                    borderRadius: BorderRadius.circular(40),
                  ),
                  child: Row(mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.add,color: Colors.deepPurpleAccent.shade200,),
                      Text('Add Experience',style: TextStyle(color: Colors.deepPurpleAccent.shade200,fontSize: 20),)
                    ],
                  ),
                ),
                 SizedBox(height: h*0.020,),
                 experience_Info(h * 0.120, w * 0.850, section_Title: 'Section Title', expHint_Text: 'Experience',),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Container experience_Info(
    double h,
    double w,{required section_Title,required expHint_Text}
  ) {
    return Container(
      height: h,
      width: w,
      // margin: EdgeInsets.all(8),
      // padding: EdgeInsets.only(left: 4),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black54,
            blurRadius: 1,
            spreadRadius: 1,
            offset: Offset(0, 1),
          )
        ],
        borderRadius: BorderRadius.circular(14),
      ),
      child: Column(
        children: [
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                section_Title,
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
          SizedBox(
            width: w * 0.880,
            child: TextFormField(
              // maxLines: ,

              decoration: InputDecoration(
                  hintText: expHint_Text,
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: BorderSide(
                      color: Colors.black,
                      width: 1,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: BorderSide(
                      color: Colors.deepPurpleAccent.shade200,
                      // width: 1,
                    ),
                  )),
            ),
          )
        ],
      ),
    );
  }
}
