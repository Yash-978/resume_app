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
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: GestureDetector(
              onTap: () {

                Navigator.pushNamed(context, '/pdf');
              },
              child: Container(
                height: h*0.060,
                  width: w*0.300,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.deepPurpleAccent.shade200),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Row(mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.remove_red_eye_outlined,color: Colors.deepPurpleAccent.shade200,),
                      Text('Preview',style: TextStyle(color: Colors.deepPurpleAccent.shade200),)
                    ],
                  )),
            ),
          ),
        ],
        title: Text(
          'Profile',
          style: TextStyle(fontWeight: FontWeight.w700, fontSize: 25),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              height: h*0.10,
              width: w*0.900,
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
                // border: Border.all(color: Colors.black),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [

                    Text('Yash ',style: TextStyle(fontSize: 20),),
                    // SizedBox(width: w*0.500,),
                    Spacer(),
                    GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, '/personal_info');
                      },
                      child: Container(
                        height: h*0.070,
                        width: w*0.120,
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
                          // border: Border.all(color: Colors.black),
                        ),
                        child: Icon(Icons.edit_note_rounded,size: 40,color: Colors.deepPurpleAccent.shade200,),
                      ),
                    )
                  ],
                ),
              ),
            ),

            Wrap(
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, '/education');
                  },
                  child: skillcategories(h,w,
                      editicon: Icons.school_outlined, edittext: 'Education'),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, '/experience');
                  },
                  child: skillcategories(h,w,
                      editicon: Icons.business_center_outlined,
                      edittext: 'Experience'),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, '/skills');
                  },
                  child: skillcategories(h,w,
                      editicon: Icons.design_services_outlined,
                      edittext: 'Skills'),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, '/summary');
                  },
                  child: skillcategories(h,w,
                      editicon: Icons.my_location_outlined, edittext: 'Summary'),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).pushNamed('/reference');
                  },
                  child: skillcategories(h,w,
                      editicon: Icons.group_add_outlined, edittext: 'Reference'),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, '/projects');
                  },
                  child: skillcategories(h,w,
                      editicon: Icons.folder_shared_outlined, edittext: 'Projects'),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, '/interest');
                  },
                  child: skillcategories(h,w,
                      editicon: Icons.favorite_border_outlined,
                      edittext: 'Interests'),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, '/awards');
                  },
                  child: skillcategories(h,w,
                      editicon: Icons.card_giftcard_rounded, edittext: 'Awards'),
                ),
                skillcategories(h,w,
                    editicon: Icons.extension_outlined, edittext: 'Activities'),
                skillcategories(h,w,
                    editicon: Icons.auto_stories_rounded, edittext: 'Publications'),
                skillcategories(h,w,
                    editicon: Icons.translate_outlined, edittext: 'Languages'),
                skillcategories(h,w,
                    editicon: Icons.info_outlined,
                    edittext: 'Addition Information'),
              ],
            )
          ],
        ),
      ),
    ));
  }

  Container skillcategories(double h,double w,{required editicon, required edittext}) {
    return Container(
      // padding: EdgeInsets.all(8),
      margin: EdgeInsets.all(8),
      alignment: Alignment.center,
      height: h*0.145,
      width: w*0.290,

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
