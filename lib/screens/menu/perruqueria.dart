import 'package:flutter/material.dart';

import '../../widgets/widgets.dart';

class PerruqueriaScreen extends StatelessWidget {
   
  const PerruqueriaScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {

    final size = MediaQuery.of(context).size;

    return ListView(
        children:[
            SizedBox(
              height: size.height* 0.02,
            ),
            const CartaBotonPersonalizado(
              titulo: 'Razas Pequeñas',
              kgTipo: '10 kg o menos',
              image: 'assets/raza_pequeña.png',
              descripcion: 'adsas',
              precio: '5',
            ),

            const CartaBotonPersonalizado(
              titulo: 'Razas Medianas', 
              kgTipo: '10-30 kg ', 
              image: 'assets/raza_mediana.png', 
              descripcion: 'adsa', 
              precio: '8',
            ),

            const CartaBotonPersonalizado(
              titulo: 'Razas Grandes',
              kgTipo: '30kg o mas',
              image: 'assets/raza_grande.png',
              descripcion: 'dadsa',
              precio: '15',
            ),
        ]
      );
  }
}




