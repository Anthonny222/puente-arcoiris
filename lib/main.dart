import 'package:flutter/material.dart';
import 'package:puente_arcoiris/routes/app-routes.dart';
import 'package:puente_arcoiris/theme/app_theme.dart';


void main() {
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {

  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Puente Arcoiris',
      theme: AppTheme.lighTheme,
      initialRoute: AppRoutes.rutaInicial,
      routes: AppRoutes.routes,
    );
  }
}
