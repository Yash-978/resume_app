

import 'package:flutter/cupertino.dart';


import 'Screens/EditPage/Awards/awards.dart';
import 'Screens/EditPage/Education_Icon/educationIcon.dart';

import 'Screens/EditPage/Experience_Icon/experience_Icon.dart';
import 'Screens/EditPage/Interests/interest.dart';
import 'Screens/EditPage/Projects/projects.dart';
import 'Screens/EditPage/Reference/reference.dart';
import 'Screens/EditPage/Skills/skills.dart';
import 'Screens/EditPage/Summary/summary.dart';
import 'Screens/EditPage/editPage.dart';
import 'Screens/Enterpage/enterPage.dart';


class AppRoutes
{
  static Map<String,Widget Function (BuildContext)>routes={
    '/':(context)=>EntryPage(),
    '/editpage':(context)=>Edit_Page(),
    '/education':(context)=>EducationIcon(),
    '/experience':(context)=>ExperienceIcon(),
    '/skills':(context)=>skills(),
    '/summary':(context)=>SummaryPage(),
    '/reference':(context)=>ReferencePage(),
    '/projects':(context)=>ProjectPage(),
    '/interest':(context)=>InterestPage(),
    '/awards':(context)=>AwardsPage(),

  };
}
