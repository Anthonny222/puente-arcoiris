import 'package:flutter/material.dart';

class CartaBotonPersonalizado extends StatelessWidget {
  const CartaBotonPersonalizado({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      child: Card(
        child: Row(
          children: [
            const Image(image: AssetImage('assets/raza_pequeña.png')),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text('Razas Pequeñas', style: TextStyle(fontFamily: 'Comic Neue Bold', fontSize: 18)),
                  const Text('10kg o menos', style: TextStyle(fontFamily: 'Comic Neue Bold', fontSize: 18)),
                  const SizedBox(height: 20,),
                  const Text('asdas', style: TextStyle(fontFamily: 'Comic Neue', fontSize: 17)),
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: const [
                      SizedBox(width: 130,),
                      Text('Precio', style: TextStyle(fontFamily: 'Comic Neue Bold'),)
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