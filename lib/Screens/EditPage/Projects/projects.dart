import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../Utils/section_Title_container.dart';

class ProjectPage extends StatefulWidget {
  const ProjectPage({super.key});

  @override
  State<ProjectPage> createState() => _ProjectPageState();
}
TextEditingController txtprojectTitle= TextEditingController();
TextEditingController txtprojectDetail= TextEditingController();
class _ProjectPageState extends State<ProjectPage> {
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            title: Text(
              'Projects',
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.w500),
            ),
            actions: [
              Container(
                height: h * 0.010,
              )
            ],
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
                    section_Title_universal(universal_HintText: 'Project'),
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
                            'Add Project',
                            style: TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize: 20,
                                color: Colors.deepPurpleAccent.shade200),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: h * 0.020,
                    ),
                    Container(
                      height: h*0.500,
                      width: w*0.900,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          border: Border.all(color: Colors.black12)),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 16),
                                child: Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    'Project 1',
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.deepPurpleAccent.shade200,
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: w * 0.590,
                              ),
                              Icon(
                                Icons.highlight_remove_rounded,
                                color: Colors.deepPurpleAccent.shade200,
                                size: 30,
                              )
                            ],
                          ),
                          SizedBox(height: h*0.020,),
                          Padding(
                            padding: const EdgeInsets.only(left: 16),
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                'Title',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ),
                          projectTextFormField(w*0.850,h*0.100, projectHintText: 'Title', project_Controller: txtprojectTitle, project_Maxline: 1,),
                          Padding(
                            padding: const EdgeInsets.only(left: 16),
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                'Detail',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ),
                          projectTextFormField(w*0.850,h*0.200, projectHintText: '', project_Controller: txtprojectTitle, project_Maxline: 6,),
                        ],
                      ),
                    ),



                  ],
                ),
              ),
            ],
          ),
        ));
  }

  SizedBox projectTextFormField(double w,double h,{required projectHintText,required project_Controller,required project_Maxline}) {
    return SizedBox(
                  width: w,
                  height: h,
                  child: TextFormField(
                    controller: project_Controller,
                    maxLines: project_Maxline,
                    decoration: InputDecoration(
                      hintText: projectHintText,
                      
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Colors.deepPurpleAccent.shade200),
                          borderRadius: BorderRadius.circular(15)),
                    ),
                  ),
                );
  }
}
