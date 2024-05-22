

import 'package:flutter/cupertino.dart';

import 'Screens/EditPage/Education_Icon/educationIcon.dart';

import 'Screens/EditPage/Experience_Icon/experience_Icon.dart';
import 'Screens/EditPage/editPage.dart';
import 'Screens/Enterpage/enterPage.dart';


class AppRoutes
{
  static Map<String,Widget Function (BuildContext)>routes={
    '/':(context)=>EntryPage(),
    '/editpage':(context)=>Edit_Page(),
    '/education':(context)=>EducationIcon(),
    '/experience':(context)=>ExperienceIcon(),

  };
}
