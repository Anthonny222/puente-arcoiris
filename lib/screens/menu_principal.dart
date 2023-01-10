
import 'package:flutter/material.dart';
import 'package:puente_arcoiris/routes/app-routes.dart';
import 'package:puente_arcoiris/theme/app_theme.dart';

import '../widgets/widgets.dart';

class MenuPrincipalScreen extends StatelessWidget {
   
  const MenuPrincipalScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {


    return Stack(         
      children: [
        Container(
          decoration: const BoxDecoration(color: Colors.white),
        ),
        Positioned(
          top: -270,
          left: -35,
          child: Container(
            alignment: Alignment.topCenter,
            width: 450,
            height: 450,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(500),
              color: AppTheme.primary,
            ),
          ),
        ),
        Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              const SizedBox(height: 80,),
              const Text('Puente Arcoiris', style: TextStyle(color: Colors.black, fontFamily: 'Comic Neue', decorationColor: AppTheme.primary, fontSize: 32),),
              
              const SizedBox(height: 130,),
              BotonPersonalizadoMenu(icono: Icons.brush , texto: 'Perruqueria', ruta: AppRoutes.rutaPerruqueria),
              
              const SizedBox(height: 40,),
              BotonPersonalizadoMenu(icono: Icons.store_mall_directory_rounded , texto: 'Tienda', ruta: AppRoutes.rutaPerruqueria),

              const SizedBox(height: 40,),
              BotonPersonalizadoMenu(icono: Icons.health_and_safety , texto: 'Salud', ruta: AppRoutes.rutaPerruqueria),

              const SizedBox(height: 40,),
              BotonPersonalizadoMenu(icono: Icons.add_box , texto: 'Funeraria', ruta: AppRoutes.rutaPerruqueria),

              Expanded(child: Container(),)
            ],
          ),
        )
      ]
    );
  }
}

