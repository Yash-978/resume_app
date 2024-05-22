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

