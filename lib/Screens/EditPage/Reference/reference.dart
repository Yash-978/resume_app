import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../Utils/Example_Help_UDF.dart';
import '../../../Utils/section_Title_container.dart';
import '../../../variable_pdf.dart';

class ReferencePage extends StatefulWidget {
  const ReferencePage({super.key});

  @override
  State<ReferencePage> createState() => _ReferencePageState();
}

TextEditingController txtRefer_Name = TextEditingController();
TextEditingController txtRefer_jobTitle = TextEditingController();
TextEditingController txtRefer_CompanyName = TextEditingController();
TextEditingController txtRefer_Email = TextEditingController();
TextEditingController txtRefer_Phone = TextEditingController();
TextEditingController txtRefer_ST = TextEditingController();

class _ReferencePageState extends State<ReferencePage> {
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
                Refer_Name = txtRefer_Name.text;
                Refer_jobTitle = txtRefer_jobTitle.text;
                Refer_CompanyName = txtRefer_CompanyName.text;
                Refer_Email = txtRefer_Email.text;
                Refer_Phone = txtRefer_Phone.text;
                Refer_ST = txtRefer_ST.text;

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
              'Reference',
              style: TextStyle(),
            ),
            bottom: TabBar(
              tabs: [
                Tab(
                  child: Text(
                    'Reference',
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
                        universal_HintText: 'Reference',
                        sectionTitle_Controlller: txtRefer_ST),
                    SizedBox(
                      height: h * 0.020,
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
                            'Add Reference',
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
                      height: h * 0.800,
                      width: w * 0.900,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          border: Border.all(color: Colors.black12)),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [

                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 16),
                                  child: Align(
                                    alignment: Alignment.centerLeft,
                                    child: Text(
                                      'Reference :-',
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
                            SizedBox(
                              height: h * 0.015,
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                children: [
                                  reference_HeadingTitle(
                                      TextreferenceHeading: "Referee's Name"),
                                  reference_TextformField(
                                      reference_Controller: txtRefer_Name,
                                      reference_textInputAction:
                                          TextInputAction.next,
                                      referenceHintText: "Referee's Name",
                                      referenceKeyboardType:
                                          TextInputType.name),
                                  SizedBox(
                                    height: h * 0.015,
                                  ),
                                  reference_HeadingTitle(
                                      TextreferenceHeading: 'Job Title'),
                                  reference_TextformField(
                                      reference_Controller: txtRefer_jobTitle,
                                      reference_textInputAction:
                                          TextInputAction.next,
                                      referenceHintText: 'Job Title',
                                      referenceKeyboardType:
                                          TextInputType.name),
                                  SizedBox(
                                    height: h * 0.015,
                                  ),
                                  reference_HeadingTitle(
                                      TextreferenceHeading: 'Company Name'),

                                  reference_TextformField(
                                      reference_Controller: txtRefer_CompanyName,
                                      reference_textInputAction:
                                          TextInputAction.next,
                                      referenceHintText: 'Company Name',
                                      referenceKeyboardType:
                                          TextInputType.name),
                                  SizedBox(
                                    height: h * 0.015,
                                  ),
                                  reference_HeadingTitle(
                                    TextreferenceHeading: 'Email',
                                  ),

                                  reference_TextformField(
                                      reference_Controller: txtRefer_Email,
                                      reference_textInputAction:
                                          TextInputAction.next,
                                      referenceHintText: 'Email',
                                      referenceKeyboardType:
                                          TextInputType.name),
                                  SizedBox(
                                    height: h * 0.015,
                                  ),
                                  reference_HeadingTitle(
                                      TextreferenceHeading: 'Phone'),

                                  reference_TextformField(
                                      reference_Controller: txtRefer_Phone,
                                      reference_textInputAction:
                                      TextInputAction.next, referenceHintText: 'Phone',referenceKeyboardType: TextInputType.number),
                                  SizedBox(
                                    height: h * 0.015,
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: h * 0.015,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Column(
                children: [
                  Edit_Help_info(h * 0.350, w * 0.850,
                      Education_Help_heading: '',
                      Education_Help_info:
                          "The 'Education' section on a resume outlines your academic background, including degrees, institution, graduation dates, and relevant academic achievement. It's essential as it demonstrates your qualifications, knowledge,and commitment to learning, providing employers with a foundation to access your potential for the roe and yoyur ability to meet specific eduacational requirements."),
                ],
              )
            ],
          ),
        ));
  }

  Align reference_HeadingTitle({required TextreferenceHeading}) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Text(
        TextreferenceHeading,
        style: TextStyle(
            color: Colors.black, fontWeight: FontWeight.w600, fontSize: 20),
      ),
    );
  }

  SizedBox reference_TextformField(
      {required reference_Controller,
      required reference_textInputAction,
      required referenceHintText,
      required referenceKeyboardType}) {
    return SizedBox(
      child: TextFormField(
        controller: reference_Controller,
        textInputAction: reference_textInputAction,
        keyboardType: referenceKeyboardType,
        decoration: InputDecoration(
          hintText: referenceHintText,
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              borderSide: BorderSide(
                color: Colors.black,
                width: 0.7,
              )),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              borderSide: BorderSide(
                color: Colors.deepPurpleAccent.shade200,
                width: 0.7,
              )),
        ),
      ),
    );
  }
}
