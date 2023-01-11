import 'package:flutter/material.dart';

class CartaTienda extends StatelessWidget {
  const CartaTienda({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: ButtonStyle(),
      child: Card(
        margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
        child: Column(
          children: const [
            Image(image: AssetImage('assets/raza_pequeña.png')),
            Text('Arnes')
          ],
        ),
      ),
      onPressed: (){},
    );
  }
}