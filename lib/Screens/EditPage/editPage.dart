import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Edit_Page extends StatefulWidget {
  const Edit_Page({super.key});

  @override
  State<Edit_Page> createState() => _Edit_PageState();
}

class _Edit_PageState extends State<Edit_Page> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: Text(
          'Profile',
          style: TextStyle(fontWeight: FontWeight.w700, fontSize: 25),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Wrap(
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, '/education');
                },
                child: skillcategories(
                    editicon: Icons.school_outlined, edittext: 'Education'),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, '/experience');
                },
                child: skillcategories(
                    editicon: Icons.business_center_outlined,
                    edittext: 'Experience'),
              ),
              skillcategories(
                  editicon: Icons.design_services_outlined, edittext: 'Skills'),
              skillcategories(
                  editicon: Icons.my_location_outlined, edittext: 'Summary'),
              skillcategories(
                  editicon: Icons.group_add_outlined, edittext: 'Reference'),
              skillcategories(
                  editicon: Icons.folder_shared_outlined, edittext: 'Projects'),
              skillcategories(
                  editicon: Icons.favorite_border_outlined,
                  edittext: 'Interests'),
              skillcategories(
                  editicon: Icons.school_outlined, edittext: 'Awards'),
              skillcategories(
                  editicon: Icons.school_outlined, edittext: 'Activities'),
              skillcategories(
                  editicon: Icons.school_outlined, edittext: 'Publications'),
              skillcategories(
                  editicon: Icons.school_outlined, edittext: 'Languages'),
              skillcategories(
                  editicon: Icons.school_outlined,
                  edittext: 'Addition Information'),
            ],
          )
        ],
      ),
    ));
  }

  Container skillcategories({required editicon, required edittext}) {
    return Container(
      // padding: EdgeInsets.all(8),
      margin: EdgeInsets.all(8),
      alignment: Alignment.center,
      height: 120,
      width: 120,

      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            spreadRadius: 3,
            blurRadius: 4,
            offset: Offset.fromDirection(5),
            color: Colors.black45,
            blurStyle: BlurStyle.outer,
          )
        ],
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Colors.black),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            editicon,
            color: Colors.deepPurpleAccent.shade200,
            size: 40,
          ),
          Text(
            edittext,
            style: TextStyle(
                color: Colors.black, fontSize: 15, fontWeight: FontWeight.w500),
          )
        ],
      ),
    );
  }
}
