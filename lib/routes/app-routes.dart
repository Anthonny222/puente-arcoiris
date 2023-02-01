// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:puente_arcoiris/screens/screens.dart';





class AppRoutes{

  static const rutaInicial = 'inicio';
  static const rutaLogin = 'login';
  
  static const rutaMenuPrincipal = 'menu_p';
  
  static const rutaPerruqueria = 'perruqueria';
  static const rutaTienda = 'tienda';
  static const rutaSalud = 'salud';
  static const rutaFuneraria = 'funeraria';
  static const rutaMenuNav = 'menu_nav';


  static Map<String, Widget Function (BuildContext context)> routes ={

    'inicio': (BuildContext context) => const IngresarScreen(),
    'login': (BuildContext context) => const MenuLoginScreen(),
    
    'menu_p': (BuildContext context) => const MenuPrincipalScreen(),
    
    'menu_nav': (BuildContext context) => const MenuNavigationScreen(), 
    'perruqueria': (BuildContext context) => const PerruqueriaScreen(),
    'tienda': (BuildContext context) => const TiendaScreen(),
    'salud': (BuildContext context) => SaludScreen(),
    'funeraria': (BuildContext context) => const FunerariaScreen(),
    

  };


}