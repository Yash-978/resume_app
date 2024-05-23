import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../Utils/Example_Help_UDF.dart';

class skills extends StatefulWidget {
  const skills({super.key});

  @override
  State<skills> createState() => _skillsState();
}

class _skillsState extends State<skills> {
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return SafeArea(
      child: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
              title: Text(
                'Skills',
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.w500),
              ),
              bottom: TabBar(
                tabs: [
                  Tab(
                    child: Text(
                      'Skills',
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
              )),
          body: TabBarView(
            children: [
              Column(
                children: [
                  SizedBox(
                    height: h * 0.020,
                  ),
                  Container(
                    height: h * 0.060,
                    width: w * 0.900,
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
                          'Add Skill',
                          style: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: 18,
                              color: Colors.deepPurpleAccent.shade200),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: h * 0.020,
                  ),
                  Container(
                    height: h * 0.120,
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
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        skill_Txtformfield(
                          w * 0.750,
                        ),
                        Icon(
                          Icons.add_circle_outline,
                          size: 40,
                          color: Colors.deepPurpleAccent.shade200,
                        )
                      ],
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Container(
                      height: h * 0.320,
                      width: w * 0.900,
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
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 16),
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                'Example 1 :',
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.black54,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 16),
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: skill_Example_text(
                                  exampleTextskill: 'Software Engineer'),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 16),
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: skill_Example_text(
                                  exampleTextskill:
                                      '- Programming Language : Java, Python, C++'),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 16),
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: skill_Example_text(
                                  exampleTextskill:
                                      '- Web Development : HTML, CSS, JavaScript'),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 16),
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: skill_Example_text(
                                  exampleTextskill:
                                      '- Frame Work : React, Spring Boot'),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 16),
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: skill_Example_text(
                                  exampleTextskill:
                                      '- Database Management : SQL, MongoDB'),
                            ),
                          ),
                        ],
                      ),
                    ),
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

  Text skill_Example_text({required exampleTextskill}) {
    return Text(
      exampleTextskill,
      style: TextStyle(
        fontSize: 15,
        color: Colors.black54,
        fontWeight: FontWeight.w600,
      ),
    );
  }

  SizedBox skill_Txtformfield(
    double w,
  ) {
    return SizedBox(
      width: w,
      child: TextFormField(
        // maxLines: ,
        decoration: InputDecoration(
          hintText: 'Skills', //expHint_Text
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
          ),
        ),
      ),
    );
  }
}
