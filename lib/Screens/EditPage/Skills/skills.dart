import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
                  Container(
                    height: h * 0.100,
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
                                )),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
