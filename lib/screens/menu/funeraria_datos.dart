import 'package:flutter/material.dart';
import 'package:puente_arcoiris/theme/app_theme.dart';

class FunerariaDatosScreen extends StatelessWidget {
   
  const FunerariaDatosScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: _AppBarPersonalizado(),
        backgroundColor: AppTheme.primary,
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.black),
      ),
      body: const Center(
         child: Text('FunerariaDatosScreen'),
      ),
    );
  }
}


class _AppBarPersonalizado extends StatelessWidget{

  @override
  Widget build(BuildContext context) { 

    // snapshot.then((id) =>print('${id[0]['titulo']})'));

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: const[
        Text('Funeraria Registro', style:TextStyle(color: Colors.black, fontFamily: 'Comic Neue')),
      ],
    );
  }


}