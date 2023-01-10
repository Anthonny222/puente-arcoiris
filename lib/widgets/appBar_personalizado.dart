import 'package:flutter/material.dart';

class AppBarPersonalizado extends StatelessWidget {

  final String titulo;

  const AppBarPersonalizado({
    Key? key, required this.titulo,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(icon: Image.asset('assets/avatar.png', height: 40),onPressed: (){},padding: EdgeInsets.zero),
        Text(titulo, style: const TextStyle(color: Colors.black, fontFamily: 'Comic Neue'),),
        IconButton(
          onPressed: (){}, 
          icon: const Icon(Icons.search_outlined, color: Colors.black,)
        )
      ],
    );
  }
}