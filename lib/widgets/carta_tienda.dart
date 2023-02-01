import 'package:flutter/material.dart';
import 'package:puente_arcoiris/theme/app_theme.dart';

class CartaTienda extends StatelessWidget {
  const CartaTienda({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextButton(
        style: TextButton.styleFrom(
          backgroundColor: Colors.grey[100],
          foregroundColor: AppTheme.primary   
        ),
        child: Column(
          children: const [
            SizedBox(height: 20),
            Image(image: AssetImage('assets/arnes.png'),height: 140, fit: BoxFit.cover,),
            Text('Arnes', style: TextStyle(fontFamily: 'Comic Neue', fontSize: 18, color: Colors.black))
          ],
        ),
        onPressed: (){},
      ),
    );
  }
}