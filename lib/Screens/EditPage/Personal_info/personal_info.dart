import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:image_picker/image_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:resume_app/Screens/EditPage/Reference/reference.dart';

import '../../../variable_pdf.dart';

class PersonalInfo_Page extends StatefulWidget {
  const PersonalInfo_Page({super.key});

  @override
  State<PersonalInfo_Page> createState() => _PersonalInfo_PageState();
}

ImagePicker imagePicker = ImagePicker();
File? fileimage;
TextEditingController txtPerson_name = TextEditingController();
TextEditingController txtPerson_phone = TextEditingController();
TextEditingController txtPerson_email = TextEditingController();
TextEditingController txtPerson_dob = TextEditingController();
TextEditingController txtPerson_linkedIn = TextEditingController();
TextEditingController txtPerson_Github = TextEditingController();
TextEditingController txtPerson_Website = TextEditingController();
TextEditingController txtPerson_Address = TextEditingController();
TextEditingController txtPerson_Pincode = TextEditingController();
TextEditingController txtPerson_City = TextEditingController();
TextEditingController txtPerson_State = TextEditingController();
TextEditingController txtPerson_Country = TextEditingController();

class _PersonalInfo_PageState extends State<PersonalInfo_Page> {
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
                Person_Name = txtPerson_name.text;
                Person_Phone = txtPerson_phone.text;
                Person_Dob = txtPerson_dob.text;
                Person_Email = txtPerson_email.text;
                Person_LinkedIn = txtPerson_linkedIn.text;
                Person_Github = txtPerson_Github.text;
                Person_Website = txtPerson_Website.text;
                Person_Address = txtPerson_Address.text;
                Person_Pincode = txtPerson_Pincode.text;
                Person_City = txtPerson_City.text;
                Person_Rajya = txtPerson_State.text;
                Person_Country = txtPerson_Country.text;



                // Course=txtPerson_course.text;
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
            bottom: TabBar(
              tabs: [
                Tab(
                  child: Text(
                    'Experience',
                    style: TextStyle(color: Colors.black, fontSize: 18),
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
              ],
            ),
          ),
          body: TabBarView(children: [
            SingleChildScrollView(
              child: Column(
                children: [
                  Center(
                    child: Container(
                      height: h * 0.250,
                      width: w * 0.500,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: (fileimage != null)
                            ? DecorationImage(
                                image: FileImage(fileimage!), fit: BoxFit.cover)
                            : DecorationImage(
                                image: AssetImage(
                                    'Assets/Images/Sample_User_Icon.png'),
                                fit: BoxFit.cover),
                        // : null,
                        color: Colors.deepPurpleAccent.shade200,
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(
                          onPressed: () async {
                            XFile? xFileimage = await imagePicker.pickImage(
                                source: ImageSource.camera);
                            setState(() {
                              fileimage = File(xFileimage!.path);
                            });
                          },
                          icon: Icon(
                            Icons.camera_alt_outlined,
                            color: Colors.deepPurpleAccent.shade200,
                            size: 70,
                          )),
                      SizedBox(
                        width: w * 0.50,
                      ),
                      IconButton(
                          onPressed: () async {
                            XFile? xFileimage = await imagePicker.pickImage(
                                source: ImageSource.gallery);
                            setState(() {
                              fileimage = File(xFileimage!.path);
                            });
                          },
                          icon: Icon(
                            Icons.image,
                            color: Colors.deepPurpleAccent.shade200,
                            size: 70,
                          ))
                    ],
                  ),
                  SizedBox(height: h * 0.010),
                  Personal_Info_Text(personalInfo_Title: 'Name'),
                  SizedBox(height: h * 0.020),
                  Personal_Info_TextFormFeild(
                    w,
                    personalInfo_HintText: 'Name',
                    personalInfo_Controlller: txtPerson_name,
                    personalInfo_keyboardType: TextInputType.name,
                    personalInfo_TextInputAction: TextInputAction.next,
                  ),
                  SizedBox(height: h * 0.010),
                  Personal_Info_Text(personalInfo_Title: 'Phone'),
                  SizedBox(height: h * 0.020),
                  Personal_Info_TextFormFeild(
                    w,
                    personalInfo_HintText: 'Phone',
                    personalInfo_Controlller: txtPerson_phone,
                    personalInfo_keyboardType: TextInputType.number,
                    personalInfo_TextInputAction: TextInputAction.next,
                  ),

                  SizedBox(height: h * 0.010),
                  Personal_Info_Text(personalInfo_Title: 'Email'),
                  SizedBox(height: h * 0.020),
                  Personal_Info_TextFormFeild(
                    w,
                    personalInfo_HintText: 'Email',
                    personalInfo_Controlller: txtPerson_email,
                    personalInfo_keyboardType: TextInputType.name,
                    personalInfo_TextInputAction: TextInputAction.next,
                  ),
                  SizedBox(height: h * 0.010),
                  Personal_Info_Text(personalInfo_Title: 'LinkedIn'),
                  SizedBox(height: h * 0.020),
                  Personal_Info_TextFormFeild(
                    w,
                    personalInfo_HintText: 'LinkedIn',
                    personalInfo_Controlller: txtPerson_linkedIn,
                    personalInfo_keyboardType: TextInputType.name,
                    personalInfo_TextInputAction: TextInputAction.next,
                  ),
                  SizedBox(height: h * 0.010),
                  Personal_Info_Text(personalInfo_Title: 'Github'),
                  SizedBox(height: h * 0.020),
                  Personal_Info_TextFormFeild(
                    w,
                    personalInfo_HintText: 'Github',
                    personalInfo_Controlller: txtPerson_Github,
                    personalInfo_keyboardType: TextInputType.name,
                    personalInfo_TextInputAction: TextInputAction.next,
                  ),
                  SizedBox(height: h * 0.010),
                  Personal_Info_Text(personalInfo_Title: 'Website'),
                  SizedBox(height: h * 0.020),
                  Personal_Info_TextFormFeild(
                    w,
                    personalInfo_HintText: 'Website',
                    personalInfo_Controlller: txtPerson_Website,
                    personalInfo_keyboardType: TextInputType.name,
                    personalInfo_TextInputAction: TextInputAction.next,
                  ),
                  SizedBox(height: h * 0.010),
                  Personal_Info_Text(personalInfo_Title: 'Address'),
                  SizedBox(height: h * 0.020),
                  Personal_Info_TextFormFeild(
                    w,
                    personalInfo_HintText: 'Address',
                    personalInfo_Controlller: txtPerson_Address,
                    personalInfo_keyboardType: TextInputType.name,
                    personalInfo_TextInputAction: TextInputAction.next,
                  ),
                  SizedBox(height: h * 0.010),
                  Personal_Info_Text(personalInfo_Title: 'City'),
                  SizedBox(height: h * 0.020),
                  Personal_Info_TextFormFeild(
                    w,
                    personalInfo_HintText: 'City',
                    personalInfo_Controlller: txtPerson_City,
                    personalInfo_keyboardType: TextInputType.name,
                    personalInfo_TextInputAction: TextInputAction.next,
                  ),
                  SizedBox(height: h * 0.010),
                  Personal_Info_Text(personalInfo_Title: 'State'),
                  SizedBox(height: h * 0.020),
                  Personal_Info_TextFormFeild(
                    w,
                    personalInfo_HintText: 'State',
                    personalInfo_Controlller: txtPerson_State,
                    personalInfo_keyboardType: TextInputType.name,
                    personalInfo_TextInputAction: TextInputAction.next,
                  ),
                  SizedBox(height: h * 0.010),
                  Personal_Info_Text(personalInfo_Title: 'Country'),
                  SizedBox(height: h * 0.020),
                  Personal_Info_TextFormFeild(
                    w,
                    personalInfo_HintText: 'Country',
                    personalInfo_Controlller: txtPerson_Country,
                    personalInfo_keyboardType: TextInputType.name,
                    personalInfo_TextInputAction: TextInputAction.done,
                  ),
                  SizedBox(height: h * 0.050),
                ],
              ),
            )
          ]),
        ));
  }

  SizedBox Personal_Info_TextFormFeild(double w,
      {required personalInfo_HintText,
      required personalInfo_keyboardType,
      required personalInfo_Controlller,
      required personalInfo_TextInputAction}) {
    return SizedBox(
      width: w * 0.900,
      child: TextFormField(
        keyboardType: personalInfo_keyboardType,
        controller: personalInfo_Controlller,
        textInputAction: personalInfo_TextInputAction,
        // maxLines: ,
        decoration: InputDecoration(
            hintText: personalInfo_HintText, //expHint_Text
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
    );
  }

  Padding Personal_Info_Text({required personalInfo_Title}) {
    return Padding(
      padding: const EdgeInsets.only(left: 16),
      child: Align(
        alignment: Alignment.centerLeft,
        child: Text(
          personalInfo_Title,
          style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}


// String Name='';
// String Phone='';
// String Dob='';
// String LinkedIn='';
// String Github='';
// String Website='';
// String Address='';
// String Pincode='';
// String City='';
// String Rajya='';
// String Country='';









