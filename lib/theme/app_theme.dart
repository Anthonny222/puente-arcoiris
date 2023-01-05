import 'package:flutter/material.dart';

class AppTheme{

  static const Color primary = Color.fromRGBO(241, 197, 107, 6);


  static final ThemeData lighTheme = ThemeData.light().copyWith(


  // Elevated Button
    elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      backgroundColor: primary,
      shape: const StadiumBorder(),
      elevation: 0,
      padding: const EdgeInsets.symmetric(vertical: 17, horizontal: 90),

      ),


  )


  );




}