

import 'package:flutter/cupertino.dart';
import 'package:resume_app/pdf_trail.dart';


import 'Screens/EditPage/Activities/Activity.dart';
import 'Screens/EditPage/Additional_Info/additional_Info.dart';
import 'Screens/EditPage/Awards/awards.dart';
import 'Screens/EditPage/Education_Icon/educationIcon.dart';

import 'Screens/EditPage/Experience_Icon/experience_Icon.dart';
import 'Screens/EditPage/Interests/interest.dart';
import 'Screens/EditPage/Languages/language.dart';
import 'Screens/EditPage/Personal_info/personal_info.dart';
import 'Screens/EditPage/Projects/projects.dart';
import 'Screens/EditPage/Publications/publications.dart';
import 'Screens/EditPage/Reference/reference.dart';
import 'Screens/EditPage/Skills/skills.dart';
import 'Screens/EditPage/Summary/summary.dart';
import 'Screens/EditPage/editPage.dart';
import 'Screens/Enterpage/enterPage.dart';
import 'Screens/Pdf.dart';
import 'Screens/SplashScreen/splashScreen.dart';


class AppRoutes
{
  static Map<String,Widget Function (BuildContext)>routes={

    '/':(context)=>SplashPage(),
    '/entry':(context)=>EntryPage(),
    '/pdftrail':(context)=>PdfTrail(),
    '/editpage':(context)=>Edit_Page(),
    '/education':(context)=>EducationIcon(),
    '/experience':(context)=>ExperienceIcon(),
    '/skills':(context)=>skills(),
    '/summary':(context)=>SummaryPage(),
    '/reference':(context)=>ReferencePage(),
    '/projects':(context)=>ProjectPage(),
    '/interest':(context)=>InterestPage(),
    '/awards':(context)=>AwardsPage(),
    '/personal_info':(context)=>PersonalInfo_Page(),
    '/activity':(context)=>ActivityPage(),
    '/publication':(context)=>PublicationPage(),
    '/language':(context)=>LanguagePage(),
    '/additional_Info':(context)=>Additional_InfoPage(),


    '/pdf':(context)=>PdfPage(),

  };
}
