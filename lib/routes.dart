

import 'package:flutter/cupertino.dart';

import 'Screens/EditPage/Education_Icon/educationIcon.dart';
import 'Screens/EditPage/Enterpage/enterPage.dart';
import 'Screens/EditPage/editPage.dart';


class AppRoutes
{
  static Map<String,Widget Function (BuildContext)>routes={
    '/':(context)=>EntryPage(),
    '/editpage':(context)=>Edit_Page(),
    '/education':(context)=>EducationIcon(),

  };
}
