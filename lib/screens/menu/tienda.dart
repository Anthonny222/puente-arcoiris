import 'package:flutter/material.dart';
import 'package:puente_arcoiris/theme/app_theme.dart';
import 'package:puente_arcoiris/widgets/widgets.dart';

class TiendaScreen extends StatelessWidget {
   
  const TiendaScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: const AppBarPersonalizado(titulo: 'Tienda',),
        automaticallyImplyLeading: false,
        backgroundColor: AppTheme.primary,
        elevation: 0,
      ),
      body: Column(
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
          )
        ],
      ),
      bottomNavigationBar: Navegacion(initialIndex: 1),
    );
  }
}

