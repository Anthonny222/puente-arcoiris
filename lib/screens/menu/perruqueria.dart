import 'package:flutter/material.dart';

import '../../widgets/widgets.dart';

class PerruqueriaScreen extends StatelessWidget {
   
  const PerruqueriaScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return ListView(
        children: const[
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            
          ),
            CartaBotonPersonalizado(
              raza: 'Razas Pequeñas',
              kgTipo: '10 kg o menos',
              image: 'assets/raza_pequeña.png',
              descripcion: 'adsas',
              precio: '\$5',
            ),

            CartaBotonPersonalizado(
              raza: 'Razas Medianas', 
              kgTipo: '10-30 kg ', 
              image: 'assets/raza_mediana.png', 
              descripcion: 'adsa', 
              precio: '\$8',
            ),

            CartaBotonPersonalizado(
              raza: 'Razas Grandes',
              kgTipo: '30kg o mas',
              image: 'assets/raza_grande.png',
              descripcion: 'dadsa',
              precio: '\$15',
            ),
        ]
      );
  }
}




