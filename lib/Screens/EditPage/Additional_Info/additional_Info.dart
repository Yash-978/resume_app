import 'package:flutter/material.dart';

import '../../../Utils/section_Title_container.dart';
import '../../../variable_pdf.dart';

class Additional_InfoPage extends StatefulWidget {
  const Additional_InfoPage({super.key});

  @override
  State<Additional_InfoPage> createState() => _Additional_InfoPageState();
}

TextEditingController txtAddInfo_ST = TextEditingController();
TextEditingController txtAddInfo = TextEditingController();

class _Additional_InfoPageState extends State<Additional_InfoPage> {
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

                AddInfo_ST = txtAddInfo_ST.text;
                AddInfo = txtAddInfo.text;

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
              'Additional Information',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
            ),
            bottom: TabBar(tabs: [
              Tab(
                child: Text(
                  'Additional Information',
                  style: TextStyle(color: Colors.black, fontSize: 15),
                ),
              ),
              Tab(
                child: Text(
                  'Example',
                  style: TextStyle(color: Colors.black, fontSize: 18),
                ),
              ),
              Tab(
                child: Text(
                  'Help',
                  style: TextStyle(color: Colors.black, fontSize: 18),
                ),
              ),
            ]),
          ),
          body: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SizedBox(
                  height: h * 0.020,
                ),
                section_Title_universal(
                    universal_HintText: 'Additional Information',
                    sectionTitle_Controlller: txtAddInfo_ST),
                SizedBox(
                  height: h * 0.020,
                ),
                Container(
                  height: h * 0.300,
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
                  child: Center(
                    child: SizedBox(
                      width: w * 0.850,
                      height: h * 0.280,
                      child: TextFormField(
                        maxLines: 7,
                        controller: txtAddInfo,
                        decoration: InputDecoration(

                          hintText: 'Additional Info ', //expHint_Text
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
                    ),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
