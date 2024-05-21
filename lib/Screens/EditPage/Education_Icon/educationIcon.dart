import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

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
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: const Text(
          'Education',
          style: TextStyle(color: Colors.black, fontSize: 25),
        ),
      ),
      body: PageView(
        children: [
          SingleChildScrollView(
            child: Column(
            
              children: [
                const Text(
                  'Education',
                  style: TextStyle(
                      fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Container(
                  height: 120,
                  width: 350,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(color: Colors.black12)),
                  child: const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        // SizedBox(height: 10,),
                      ],
                    ),
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
                      border: Border.all(
                          color: Colors.deepPurpleAccent.shade200)),
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
                            edit_textinput_action:
                            TextInputAction.next),
                        const SizedBox(
                          height: 15,
                        ),
                        buildColumn_Edit(
                            editController: txtschool,
                            editHintText: 'School/University',
                            editCourseName: 'School/University',
                            edit_textinput_action:
                            TextInputAction.next),
                        const SizedBox(
                          height: 15,
                        ),
                        buildColumn_Edit(
                            editController: txtgrade,
                            editHintText: 'Grade/Score',
                            editCourseName: 'Grade/Score',
                            edit_textinput_action:
                            TextInputAction.next),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                const Text(
                  'Example',
                  style: TextStyle(
                      fontSize: 20, fontWeight: FontWeight.bold),
                ),
                example_Edit_Container(
                    editExampleText: 'Example 1',
                    editCourseName:
                    'Course : MA in English Literature',
                    editUniversityName:
                    'University : Harvard University, Cambridge, MA',
                    editYear: 'Year : 2016 to present',
                    editScore: 'Score : CGPA 7.73'),

                const SizedBox(
                  height: 20,
                ),
                example_Edit_Container(
                    editExampleText: 'Example 2',
                    editCourseName:
                    'Course : Computer Science',
                    editUniversityName:
                    'University : River Brook University, Chicago,IL',
                    editYear: 'Year : 2014',
                    editScore: 'Score : CGPA 7.60'),
                const SizedBox(
                  height: 20,
                ),
                example_Edit_Container(
                    editExampleText: 'Example 3',
                    editCourseName:
                    'Course : High School',
                    editUniversityName:
                    'University : Concord High School',
                    editYear: 'Year : 2010',
                    editScore: 'Score : CGPA 9.5'),
              ],
            ),
          ),
        ],
      )
    ));
  }

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
}
