import 'package:flutter/material.dart';
import 'package:puente_arcoiris/theme/app_theme.dart';


class Navegacion extends StatelessWidget {

  final int initialIndex;

  const Navegacion({
    Key? key, required this.initialIndex,
  }) : super(key: key);



  @override
  Widget build(BuildContext context) {


    return BottomNavigationBar(
      showSelectedLabels: false,
      showUnselectedLabels: false,

      backgroundColor: Colors.grey,
      unselectedItemColor: Colors.black,
      selectedItemColor: AppTheme.primary,
      currentIndex: initialIndex,
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.brush),
          label: 'Perruqeria',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.store_mall_directory_rounded),
          label: 'Tienda',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.health_and_safety),
          label: 'Salud'
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.add_box),
          label: 'Funeraria'
        )
      ],
    ); 
  }
}
