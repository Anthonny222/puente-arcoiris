import 'package:flutter/material.dart';

class CartaBotonPersonalizado extends StatelessWidget {
  
  final String raza;
  final String kgTipo; 
  final String descripcion; 
  final String image; 
  final String precio; 
  
  const CartaBotonPersonalizado({
    
    Key? key, required this.raza, required this.kgTipo, required this.descripcion, required this.image, required this.precio,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      child: Card(
        child: Row(
          children: [
            Image(image: AssetImage(image)),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(raza, style: const TextStyle(fontFamily: 'Comic Neue Bold', fontSize: 18)),
                  Text(kgTipo, style: const TextStyle(fontFamily: 'Comic Neue Bold', fontSize: 18)),
                  const SizedBox(height: 20,),
                  Text(descripcion, style: const TextStyle(fontFamily: 'Comic Neue', fontSize: 17)),
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      const SizedBox(width: 130,),
                      Text(precio, style: const TextStyle(fontFamily: 'Comic Neue Bold'),)
                    ],
                  )
                ],
              ),
            )
          ],
        )
      ),
      onPressed: (){},
    );
  }
}