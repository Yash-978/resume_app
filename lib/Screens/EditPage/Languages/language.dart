import 'package:flutter/material.dart';

import '../../../Utils/section_Title_container.dart';
import '../../../variable_pdf.dart';
class LanguagePage extends StatefulWidget {
  const LanguagePage({super.key});

  @override
  State<LanguagePage> createState() => _LanguagePageState();
}

class _LanguagePageState extends State<LanguagePage> {
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return DefaultTabController(length: 3, child: Scaffold(
      bottomNavigationBar: BottomAppBar(
        height: h * 0.090,
        padding: EdgeInsets.only(left: 280, bottom: 10, top: 10),
        child: GestureDetector(
          onTap: () {
            // Pub_ST=txtPub_ST.text;
            // Pub_title=txtPub_detail.text;
            // Pub_Detail=txtPub_detail.text;

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
          'Languages',
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.w600),
        ),
        bottom: TabBar(tabs: [
          Tab(
            child: Text(
              'Languages',
              style: TextStyle(color: Colors.black, fontSize: 19),
            ),
          ),
          Tab(
            child: Text(
              'Example',
              style: TextStyle(color: Colors.black, fontSize: 19),
            ),
          ),
          Tab(
            child: Text(
              'Help',
              style: TextStyle(color: Colors.black, fontSize: 19),
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
                  height: h * 0.030,
                ),

                ...List.generate(
                    Languagecheck.length,
                        (index) => CheckboxListTile(
                      activeColor: Colors.blue,
                      value: Languagecheck[index],
                      title: Text('${Language_names[index]}',style: TextStyle(color: Colors.black87),),
                      onChanged: (value) {
                        setState(() {
                          Languagecheck[index] = value;
                        });
                        if(value == true)
                        {
                          LanguageList.add(Language_names[index]);
                        }
                        else{
                          LanguageList.remove(Language_names[index]);
                        }
                      },
                    )),
                SizedBox(
                  height: h * 0.020,
                ),
                // ),
              ],
            ),
          ),
          
        ],
      ),
    ));
  }
}

