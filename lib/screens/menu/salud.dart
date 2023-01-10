import 'package:flutter/material.dart';
import 'package:puente_arcoiris/theme/app_theme.dart';

import '../../widgets/widgets.dart';

class SaludScreen extends StatelessWidget {
   
  const SaludScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const AppBarPersonalizado(titulo: 'Salud',),
        automaticallyImplyLeading: false,
        backgroundColor: AppTheme.primary,
        elevation: 0,
      ),
      body: Center(
         child: Text('SaludScreen'),
      ),
    );
  }
}