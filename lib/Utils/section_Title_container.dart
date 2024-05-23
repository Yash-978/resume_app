import 'package:flutter/material.dart';

Container section_Title_universal({required universal_HintText,required sectionTitle_Controlller}) {
  var h;
  var w;
  return Container(
    height: 110,
    width: 360,
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
              'Section Title',
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ),
        SizedBox(
          width: 350,
          child: TextFormField(
            controller: sectionTitle_Controlller,
            // maxLines: ,
            decoration: InputDecoration(
                hintText: universal_HintText, //expHint_Text
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
