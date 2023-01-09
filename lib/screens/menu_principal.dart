import 'dart:math';

import 'package:flutter/material.dart';
import 'package:puente_arcoiris/theme/app_theme.dart';

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
              const Text('4 Pets', style: TextStyle(color: Colors.black, fontFamily: 'Comic Neue', decorationColor: AppTheme.primary),),
              const SizedBox(height: 100,),
              ElevatedButton(onPressed: (){}, child: Text('Hola?')),
              const SizedBox(height: 40,),
              ElevatedButton(onPressed: (){}, child: Text('Hola?')),
              const SizedBox(height: 40,),
              ElevatedButton(onPressed: (){}, child: Text('Hola?')),
              const SizedBox(height: 40,),
              ElevatedButton(onPressed: (){}, child: Text('Hola?')),
              Expanded(child: Container(),)
            ],
          ),
        )
      ]
    );
  }
}