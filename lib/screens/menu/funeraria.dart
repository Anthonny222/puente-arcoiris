import 'package:flutter/material.dart';

import '../../theme/app_theme.dart';
import '../../widgets/widgets.dart';

class FunerariaScreen extends StatelessWidget {
   
  const FunerariaScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const AppBarPersonalizado(titulo: 'Funeraria',),
        automaticallyImplyLeading: false,
        backgroundColor: AppTheme.primary,
        elevation: 0,
      ),
      body: Center(
         child: Text('FunerariaScreen'),
      ),
      bottomNavigationBar: Navegacion(initialIndex: 3),
    );
  }
}