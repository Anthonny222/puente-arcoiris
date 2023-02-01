import 'package:flutter/material.dart';
import 'package:puente_arcoiris/theme/app_theme.dart';

class PerfilScreen extends StatelessWidget {
   
  
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: _AppBarPersonalizado(),
        backgroundColor: AppTheme.primary,
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.black),
      ),
      body: Container(
        width: double.infinity,
        child: GridImagesSocial()
      ),
    );
  }
}

class GridImagesSocial extends StatelessWidget {
  const GridImagesSocial({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 3,
      children: List.generate(20, (index) {

        return const Center(
          child: Image(image: AssetImage('assets/rectangle26.png'), fit: BoxFit.cover,),
        );

      }),
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
        Text('Perfil', style:TextStyle(color: Colors.black, fontFamily: 'Comic Neue')),
      ],
    );
  }


}

