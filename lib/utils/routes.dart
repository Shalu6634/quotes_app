import 'package:flutter/material.dart';
import 'package:quotes_app/screen/home/splashScreeen.dart';

import '../screen/home/firstPage.dart';

class AppRoutes
{
  static Map<String, Widget Function(BuildContext)>routes = {
    '/':(context)=>HomePage(),
    '/h':(context)=>SplashScreen(),
  };
}