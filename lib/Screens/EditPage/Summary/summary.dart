import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../../../Utils/Example_Help_UDF.dart';
import '../../../Utils/section_Title_container.dart';
import '../../../variable_pdf.dart';

class SummaryPage extends StatefulWidget {
  const SummaryPage({super.key});

  @override
  State<SummaryPage> createState() => _SummaryPageState();
}

TextEditingController txtsummary_ST = TextEditingController();
TextEditingController txtsummary = TextEditingController();

class _SummaryPageState extends State<SummaryPage> {
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
              Summary_ST = txtsummary_ST.text;
              Summary_ = txtsummary.text;
              // Course=txtcourse.text;
              // Grade=txtgrade.text;
              // School=txtschool.text;

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
            'Summary',
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.w500),
          ),
          bottom: TabBar(
            tabs: [
              Tab(
                child: Text(
                  'Summary',
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
                  SizedBox(
                    height: h * 0.020,
                  ),
                  section_Title_universal(
                      universal_HintText: 'Summary',
                      sectionTitle_Controlller: txtsummary_ST),


                  SizedBox(
                    height: h * 0.020,
                  ),
                  Container(
                    height: h * 0.220,
                    width: w * 0.900,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black54),
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
                    child: Center(child: Text('${summary[selectsummary]}')),
                  ),
                  SizedBox(
                    height: h * 0.020,
                  ),
                  Column(
                    children: [
                      ...List.generate(
                        summary.length,
                        (index) => InkWell(
                          onTap: () {
                            setState(() {
                              selectsummary = index;
                            });
                          },
                          child: Column(
                            children: [
                              Container(
                                height: h * 0.100,
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
                                child: Center(
                                    child: Text(
                                  '${summary[index]}',
                                )),
                              ),
                              SizedBox(
                                height: h * 0.020,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  )
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
                    Education_Help_info: "- Do not elaborates",
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  SizedBox Summary_TextFormfield(double w,
      {required summaryHintTExt, required summaryMaxLines}) {
    return SizedBox(
      width: w,
      child: TextFormField(
        maxLines: summaryMaxLines,
        decoration: InputDecoration(
          hintText: summaryHintTExt, //expHint_Text
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

List summary = [
  'Looking for a stimulating role where I can leverage my skills and knowledge to drive positive change and exceed organizational goals.',
  'Passionate about joining a dynamic team where I can utilize my experience and abilities to deliver exceptional results and contribute to the company\'s growth.',
  'Seeking an opportunity to utilize my skills and qualifications in a collaborative environment, making a meaningful impact and advancing my professional journey.',
  'Looking for a fast-paced and challenging role that allows me to leverage my diverse skill set, drive innovation, and create valuable solutions for clients.',
  'To secure a role in a dynamic and demanding setting that values my skills and experience, empowering me to deliver substantial contributions.',
  'Seeking a challenging role in a progressive company that fosters creativity, embraces diversity, and encourages professional development.',
  'Motivated to contribute my expertise and dedication to an organization that values integrity, excellence, and continuous improvement.',
  'Motivated to contribute to the growth and success of a progressive organization by leveraging my strong interpersonal skills and commitment to excellence.',
  'Passionate about making a meaningful impact in a purpose-driven company that prioritizes social responsibility and positive change.',
];
int selectsummary = 0;