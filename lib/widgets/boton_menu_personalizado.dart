import 'package:flutter/material.dart';


class BotonPersonalizadoMenu extends StatelessWidget {


  final IconData icono;
  final String texto;

  const BotonPersonalizadoMenu({
    Key? key, required this.icono, required this.texto,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(onPressed: (){},
      style: ElevatedButton.styleFrom(
        maximumSize: const Size.fromWidth(200),
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15)
      ),
      child: Row(
        children: [
          Icon(icono, color: Colors.black87, size: 23),
          const SizedBox(width: 15,),
          Text(texto, style: const TextStyle(color: Colors.black87, fontFamily: 'Comic Neue Bold', fontSize: 17),),
        ],
      ),
    );
  }
}