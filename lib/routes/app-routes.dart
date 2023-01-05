
import 'package:flutter/material.dart';
import 'package:puente_arcoiris/screens/screens.dart';



class AppRoutes{

  static const rutaInicial = 'inicio';
  static const rutaLogin = 'login';


  static Map<String, Widget Function (BuildContext context)> routes ={

    'inicio': (BuildContext context) => const IngresarScreen(),
    'login': (BuildContext context) => const LoginScreen()


  };


}