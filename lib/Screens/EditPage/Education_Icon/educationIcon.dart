import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'UDF_education_icon.dart';

class EducationIcon extends StatefulWidget {
  const EducationIcon({super.key});

  @override
  State<EducationIcon> createState() => _EducationIconState();
}

class _EducationIconState extends State<EducationIcon> {
  TextEditingController txtcourse = TextEditingController();
  TextEditingController txtschool = TextEditingController();
  TextEditingController txtgrade = TextEditingController();

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return SafeArea(
      child: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            actions: [
              Container(
                height: 0.120,
                width: 0.200,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    border:
                        Border.all(color: Colors.deepPurpleAccent.shade200)),
              )
            ],
            bottom: TabBar(
              tabs: [
                Tab(
                  child: Text(
                    'Education',
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
            title: const Text(
              'Education',
              style: TextStyle(color: Colors.black, fontSize: 25),
            ),
          ),
          body: TabBarView(
            children: [
              SingleChildScrollView(
                child: UDF_Education_Icon(),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    const Text(
                      'Example',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    example_Edit_Container(
                        editExampleText: 'Example 1',
                        editCourseName: 'Course : MA in English Literature',
                        editUniversityName:
                            'University : Harvard University, Cambridge, MA',
                        editYear: 'Year : 2016 to present',
                        editScore: 'Score : CGPA 7.73'),
                    const SizedBox(
                      height: 20,
                    ),
                    example_Edit_Container(
                        editExampleText: 'Example 2',
                        editCourseName: 'Course : Computer Science',
                        editUniversityName:
                            'University : River Brook University, Chicago,IL',
                        editYear: 'Year : 2014',
                        editScore: 'Score : CGPA 7.60'),
                    const SizedBox(
                      height: 20,
                    ),
                    example_Edit_Container(
                        editExampleText: 'Example 3',
                        editCourseName: 'Course : High School',
                        editUniversityName: 'University : Concord High School',
                        editYear: 'Year : 2010',
                        editScore: 'Score : CGPA 9.5'),
                  ],
                ),
              ),
              SingleChildScrollView(
                child: Column(
                  children: [
                    SizedBox(
                      height: 15,
                    ),
                    Edit_Help_info(h * 0.350, w * 0.850,
                        Education_Help_heading: '',
                        Education_Help_info:
                            "The 'Education' section on a resume outlines your academic background, including degrees, institution, graduation dates, and relevant academic achievement. It's essential as it demonstrates your qualifications, knowledge,and commitment to learning, providing employers with a foundation to access your potential for the roe and yoyur ability to meet specific eduacational requirements."),
                    const SizedBox(
                      height: 20,
                    ),
                    Edit_Help_info(h * 0.350, w * 0.850,
                        Education_Help_heading: 'Dos :',
                        Education_Help_info:
                            "- Tailor your work experience section according to each job.\n -The work experience must be up to 2 to 3 sentences or should be in the form of a list.\n - Even if you have more experience, your Resume/CV should not exceed 2 pages.\n - The description could be optional for older or irrelevant experience compared to the applied job. \n Ensure correct Grammar, Punctuation, and Spelling."),
                    const SizedBox(
                      height: 20,
                    ),
                    Edit_Help_info(
                      h * 0.250,
                      w * 0.850,
                      Education_Help_heading: "Dont's :",
                      Education_Help_info: "- Do not elabarates",
                    ),
                  ],
                ),
              ),
            ],
          ),
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
}

Column buildColumn_Edit(
    {required editController,
    required editHintText,
    required editCourseName,
    required edit_textinput_action}) {
  return Column(
    children: [
      // SizedBox(height: 10,),
      Align(
          alignment: Alignment.centerLeft,
          child: Text(
            editCourseName,
            style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 18,
                color: Colors.deepPurpleAccent.shade200),
          )),
      // buildTextFormField_Edit(editHintText: 'Course/Degree', editController: txtcourse),
      TextFormField(
        textInputAction: edit_textinput_action,
        controller: editController,
        decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.deepPurpleAccent.shade200),
              borderRadius: BorderRadius.circular(15),
            ),
            hintText: editHintText),
      ),
    ],
  );
}

Column UDF_Education_Icon() {
  var txtgrade;
  var txtcourse;
  var txtschool;

  return Column(
    children: [

      Container(
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
                // maxLines: ,
                decoration: InputDecoration(
                    hintText: 'Education', //expHint_Text
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
      ),
      const SizedBox(
        height: 20,
      ),
      Container(
        height: 50,
        width: 350,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            border: Border.all(color: Colors.deepPurpleAccent.shade200)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.add,
              color: Colors.deepPurpleAccent.shade200,
            ),
            Text(
              'Add Education',
              style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 18,
                  color: Colors.deepPurpleAccent.shade200),
            ),
          ],
        ),
      ),
      const SizedBox(
        height: 20,
      ),
      Container(
        height: 500,
        width: 350,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            border: Border.all(color: Colors.black12)),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              buildColumn_Edit(
                  editController: txtcourse,
                  editHintText: 'Course/Degree',
                  editCourseName: 'Course/Degree',
                  edit_textinput_action: TextInputAction.next),
              const SizedBox(
                height: 15,
              ),
              buildColumn_Edit(
                  editController: txtschool,
                  editHintText: 'School/University',
                  editCourseName: 'School/University',
                  edit_textinput_action: TextInputAction.next),
              const SizedBox(
                height: 15,
              ),
              buildColumn_Edit(
                  editController: txtgrade,
                  editHintText: 'Grade/Score',
                  editCourseName: 'Grade/Score',
                  edit_textinput_action: TextInputAction.next),
            ],
          ),
        ),
      ),
    ],
  );
}
