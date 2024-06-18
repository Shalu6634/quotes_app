import 'package:flutter/material.dart';
import 'package:quotes_app/screen/home/EditPage/quote.dart';
import 'package:quotes_app/screen/home/splashScreeen.dart';
import 'package:quotes_app/screen/home/theme.dart';
import 'package:quotes_app/screen/home/themeselect.dart';
import '../screen/home/EditPage/editPage.dart';
import '../screen/home/firstPage.dart';
import '../screen/home/saveScreen.dart';
import '../screen/home/setTheme.dart';

class AppRoutes
{
  static Map<String, Widget Function(BuildContext)>routes = {
    '/h':(context)=>const HomePage(),
    '/':(context)=>const SplashScreen(),
    '/edit':(context)=>const EditScreen(),
    '/save':(context)=>const FavoriteScreen(),
    '/theme':(context)=>const ThemeSelect(),
    '/set':(context)=>const SetTheme(),
    '/q':(context)=>const Quote(),

  };
}