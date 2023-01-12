import 'package:flutter/material.dart';
import 'package:puente_arcoiris/theme/app_theme.dart';
import 'package:puente_arcoiris/widgets/widgets.dart';

class TiendaScreen extends StatelessWidget {
   
  const TiendaScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    
    final size = MediaQuery.of(context).size;
    
    return SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row( 
              mainAxisAlignment: MainAxisAlignment.center,
              children: const[
                CartaTienda(),
                CartaTienda()
              ],
            ),
            Row( 
              mainAxisAlignment: MainAxisAlignment.center,
              children: const[
                CartaTienda(),
                CartaTienda()
              ],
            ),
            Row( 
              mainAxisAlignment: MainAxisAlignment.center,
              children: const[
                CartaTienda(),
                CartaTienda()
              ],
            ),
            Row( 
              mainAxisAlignment: MainAxisAlignment.center,
              children: const[
                CartaTienda(),
                CartaTienda()
              ],
            )
          ],
        ),
      );
  }
}

