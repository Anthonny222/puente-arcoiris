import 'package:flutter/material.dart';
import 'package:puente_arcoiris/theme/app_theme.dart';

import '../../widgets/widgets.dart';

class PerruqueriaScreen extends StatelessWidget {
   
  const PerruqueriaScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const AppBarPersonalizado(titulo: 'Perruqueria',),
        automaticallyImplyLeading: false,
        backgroundColor: AppTheme.primary,
        elevation: 0,
      ),
      body: ListView(
        children: const[
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            
          ),
            CartaBotonPersonalizado(),
            CartaBotonPersonalizado(),
            CartaBotonPersonalizado(),
        ]
      ),
      bottomNavigationBar: Navegacion(initialIndex: 0,),
    );
  }
}




