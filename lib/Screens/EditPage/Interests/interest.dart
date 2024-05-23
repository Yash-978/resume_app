import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../../../Utils/section_Title_container.dart';

class InterestPage extends StatefulWidget {
  const InterestPage({super.key});

  @override
  State<InterestPage> createState() => _InterestPageState();
}

TextEditingController txtinterest = TextEditingController();
TextEditingController txtinterest_SectionTitle = TextEditingController();

class _InterestPageState extends State<InterestPage> {
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
                Interest=txtinterest.text;
                Interest_SectionTitle=txtinterest_SectionTitle.text;
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
                title: Text('Interest',style: TextStyle(fontSize: 25,fontWeight: FontWeight.w600),),
            bottom: TabBar(tabs: [
              Tab(
                child: Text(
                  'Interest',
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
            ]),
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
                        universal_HintText: 'Interest',
                        sectionTitle_Controlller: txtinterest_SectionTitle),
                    SizedBox(
                      height: h * 0.020,
                    ),
                    ...List.generate(
                      Interest_Controller_List.length,
                      (index) => Column(
                        children: [
                          Container(
                            height: h * 0.110,
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
                                SizedBox(
                                  width: w * 0.750,
                                  child: TextFormField(
                                    // maxLines: ,
                                    decoration: InputDecoration(
                                        hintText: 'Interest', //expHint_Text
                                        enabledBorder: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(15),
                                          borderSide: BorderSide(
                                            color: Colors.black,
                                            width: 1,
                                          ),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(15),
                                          borderSide: BorderSide(
                                            color: Colors
                                                .deepPurpleAccent.shade200,
                                            // width: 1,
                                          ),
                                        )),
                                  ),
                                ),
                                GestureDetector(
                                  onTap: () {
                                    TextEditingController txtinterest = TextEditingController();
                                    setState(() {
                                      Interest_Controller_List.add(
                                          Interest_Controller_Model(
                                              txtinterest: txtinterest));
                                    });
                                  },
                                  child: Icon(
                                    Icons.add_circle_outline_rounded,
                                    size: 40,
                                    color: Colors.deepPurpleAccent.shade200,
                                  ),
                                )
                              ],
                            ),
                          ),
                          SizedBox(
                            height: h * 0.020,
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ));
  }
}

class Interest_Controller_Model {
  TextEditingController? txtinterest;

  Interest_Controller_Model({this.txtinterest});
}

List<Interest_Controller_Model> Interest_Controller_List = [
  Interest_Controller_Model(txtinterest: txtinterest)
];
String? Interest='';
String? Interest_SectionTitle='';
