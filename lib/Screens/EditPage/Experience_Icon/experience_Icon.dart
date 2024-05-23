import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:resume_app/Screens/EditPage/Reference/reference.dart';
import 'package:resume_app/Utils/section_Title_container.dart';

// import '../Education_Icon/UDF_education_icon.dart';
TextEditingController txtcourse = TextEditingController();
TextEditingController txtschool = TextEditingController();
TextEditingController txtgrade = TextEditingController();
TextEditingController txtexperience = TextEditingController();
TextEditingController txtexperience_SectionTitle = TextEditingController();
TextEditingController txtcompany=TextEditingController();
TextEditingController exptxtjobTitle=TextEditingController();
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
        bottomNavigationBar: BottomAppBar(
          height: h * 0.090,
          padding: EdgeInsets.only(left: 280, bottom: 10, top: 10),
          child: GestureDetector(
            onTap: () {
              Company=txtcompany.text;
              Jobtitle=exptxtjobTitle.text;

              Navigator.of(context).pushNamed('/editpage');
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
                    'Save',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  )),
            ),
          ),
        ),
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
            SingleChildScrollView(
              child: Column(
                children: [
                  section_Title_universal(universal_HintText: 'Experience', sectionTitle_Controlller:txtexperience_SectionTitle ),


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
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.add,
                          color: Colors.deepPurpleAccent.shade200,
                        ),
                        Text(
                          'Add Experience',
                          style: TextStyle(
                              color: Colors.deepPurpleAccent.shade200,
                              fontSize: 20),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: h * 0.020,
                  ),
                  Container(
                    height: h * 0.550,
                    width: w * 0.900,
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
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 16),
                              child: Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  'Experience 1',
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.deepPurpleAccent.shade200,
                                  ),
                                ),
                              ),
                            ),
                            Spacer(),
                            Icon(
                              Icons.highlight_remove_rounded,
                              color: Colors.deepPurpleAccent.shade200,
                              size: 30,
                            )
                          ],
                        ),
                        expHeading_Text(section_Title: 'Company Name'),
                        SizedBox(
                          height: h * 0.010,
                        ),
                        Exp_textFormField(
                          w * 0.880,
                          expHint_Text: 'Company Name',
                          expController: txtcompany,
                        ),
                        SizedBox(
                          height: h * 0.020,
                        ),
                        expHeading_Text(section_Title: 'Job Title'),
                        SizedBox(
                          height: h * 0.010,
                        ),
                        Exp_textFormField(
                          w * 0.880,
                          expHint_Text: 'Job Title',
                          expController: txtjobTitle,
                        ),
                        SizedBox(
                          height: h * 0.020,
                        ),
                        // expHeading_Text(section_Title: 'Detail'),
                        // SizedBox(
                        //   height: h * 0.010,
                        // ),
                        // Exp_textFormField(
                        //   w * 0.880,
                        //   expHint_Text: 'Grade/Score',
                        //   expController: txtgrade,
                        // )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            exp_Example_screen(),
            Container(
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
                              'Education_Help_heading',
                              style: TextStyle(
                                  color: Colors.black54,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 30),
                            )),
                        Text(
                          'Education_Help_info',
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
            ),
          ],
        ),
      ),
    );
  }

  Container exp_Example_screen() {
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
                  'expExampleText',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black54),
                )),
            Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'expCourseName',
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.black54),
                )),
            Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'expUniversityName',
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.black54),
                )),
            Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'editYear',
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.black54),
                )),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'editScore',
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

  SizedBox Exp_textFormField(double w,
      {required expHint_Text, required expController}) {
    return SizedBox(
      width: w,
      child: TextFormField(
        // maxLines: ,
        controller: expController,

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
    );
  }

  Padding expHeading_Text({required section_Title}) {
    return Padding(
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
    );
  }
}

//   Container experience_Info(
//     double h,
//     double w,{required section_Title,required expHint_Text}
//   ) {
//     return
//   }
// }
String? Company='';
String? Jobtitle='';