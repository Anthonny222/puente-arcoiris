import 'package:flutter/material.dart';

import '../../widgets/widgets.dart';

class RegistrarseScreen extends StatelessWidget {
   
  const RegistrarseScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    
    final size = MediaQuery.of(context).size;

    return Column(
      children: [
        SizedBox( height: size.height * 0.02,),
        const InputPersonalizado(labelText: 'Nombre', hintText: 'Nombre'),
        const InputPersonalizado(labelText: 'Apellido', hintText: 'Apellido'),
        const InputPersonalizado(labelText: 'Correo', hintText: 'Correo', keyboardType: TextInputType.emailAddress),
        const InputPersonalizado(labelText: 'Contraseña', hintText: 'Contraseña', obscureText: true),
        const InputPersonalizado(labelText: 'Telefono', hintText: 'Telefono', keyboardType: TextInputType.phone),
        SizedBox( height: size.height * 0.03,),
        ElevatedButton(
          onPressed: (){}, 
          child: const Text(
            'Registrarse',
            style: TextStyle(
              color: Colors.black,
              fontFamily: 'Comic Neue',
              fontSize: 16
            ),
          )
        )
      ],
    );
  }
}