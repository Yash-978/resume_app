import 'package:flutter/material.dart';

Container example_Edit_Container(
    {required editExampleText,
      required editCourseName,
      required editUniversityName,
      required editYear,
      required editScore}) {
  return Container(
    height: 180,
    width: 350,
    alignment: Alignment.centerLeft,
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        border: Border.all(color: Colors.black12)),
    child: Padding(
      padding: EdgeInsets.all(8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Align(
              alignment: Alignment.centerLeft,
              child: Text(
                editExampleText,
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black54),
              )),
          Align(
              alignment: Alignment.centerLeft,
              child: Text(
                editCourseName,
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Colors.black54),
              )),
          Align(
              alignment: Alignment.centerLeft,
              child: Text(
                editUniversityName,
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Colors.black54),
              )),
          Align(
              alignment: Alignment.centerLeft,
              child: Text(
                editYear,
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Colors.black54),
              )),
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              editScore,
              style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: Colors.black54),
            ),
          ),
          // SizedBox(height: 10,),
        ],
      ),
    ),
  );
}

Widget Edit_Help_info(double h, double w,
    {required Education_Help_heading, required Education_Help_info}) {
  return Container(
    // margin: EdgeInsets.all(5),
    padding: EdgeInsets.all(8),
    height: h,
    width: w,
    decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.black87,
            spreadRadius: 5,
            blurRadius: BorderSide.strokeAlignOutside,
            blurStyle: BlurStyle.outer,
            // offset: Offset.fromDirection(BorderSide.strokeAlignOutside)
          )
        ],
        border: Border.all(color: Colors.black, width: 0.7),
        borderRadius: BorderRadius.circular(15)),
    child: Center(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    Education_Help_heading,
                    style: TextStyle(
                        color: Colors.black54,
                        fontWeight: FontWeight.w600,
                        fontSize: 30),
                  )),
              Text(
                Education_Help_info,
                style: TextStyle(
                    color: Colors.black54,
                    fontSize: 13,
                    fontWeight: FontWeight.w400),
              )
            ],
          ),
        ),
      ),
    ),
  );
}