import 'package:flutter/material.dart';
import 'package:resume_app/Screens/EditPage/Personal_info/personal_info.dart';

class PdfTrail extends StatefulWidget {
  const PdfTrail({super.key});

  @override
  State<PdfTrail> createState() => _PdfTrailState();
}

class _PdfTrailState extends State<PdfTrail> {

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: BottomAppBar(
          height: 80,
          padding: EdgeInsets.only(left: 280, bottom: 10, top: 10),
          child: GestureDetector(
            onTap: () {

              // Course=txtcourse.text;
              // Grade=txtgrade.text;
              // School=txtschool.text;
              Navigator.of(context).pushNamed('/pdf');
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
                    'Generate Pdf',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  )),
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Container(
            height: 750,
            width: 370,
            decoration: BoxDecoration(border: Border.all(color: Colors.black)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Row(
                  children: [
                    Container(
                      height: 700,
                      width: 150,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Color(0xffF1F1F1),
                      ),
                      child: Column(
                        children: [
                          SizedBox(height: 10,),
                          Container(
                            height: 180,
                            width: 200,
                            decoration: BoxDecoration(
                              image: (fileimage != null)
                                  ? DecorationImage(
                                      image: FileImage(fileimage!),
                                      fit: BoxFit.cover)
                                  : DecorationImage(
                                      image: AssetImage(
                                          'Assets/Images/Sample_User_Icon.png'),
                                      fit: BoxFit.cover),
                            ),
                          ),
                          Text('Skill name',style: TextStyle(
                              color: Colors.deepOrange, fontSize: 20),),
                          RichText(
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: 'Skill name',
                                  style: TextStyle(
                                      color: Colors.orange, fontSize: 15),
                                ),
                                TextSpan(
                                  text: ' : {gender}',
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 15),
                                ),
                              ],
                            ),
                          ),

                        ],
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
