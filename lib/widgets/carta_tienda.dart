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
        // margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
        child: Column(
          children: const [
            SizedBox(height: 20),
            Image(image: AssetImage('assets/arnes.png'),height: 140, fit: BoxFit.cover,),
            Text('Arnes', style: TextStyle(fontFamily: 'Comic Neue', fontSize: 18),)
          ],
        ),
      ),
      onPressed: (){},
    );
  }
}