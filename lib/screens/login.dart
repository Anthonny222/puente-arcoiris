import 'package:flutter/material.dart';
import 'package:puente_arcoiris/routes/app-routes.dart';

import '../widgets/widgets.dart';


class LoginScreen extends StatelessWidget {
  
  const LoginScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    final size = MediaQuery.of(context).size;
    
    return Column(
      children: [
        SizedBox(height: size.height *0.03,),
        const Text('Bienvenido', style: TextStyle(fontFamily: 'Comic Neue Bold', fontSize: 25, ),),
        SizedBox( height: size.height * 0.05),
        const InputPersonalizado(labelText: 'Correo', hintText: 'Correo', keyboardType: TextInputType.emailAddress ),
        SizedBox(height: size.height*0.01,),
        const InputPersonalizado(labelText: 'Contraseña', hintText: 'Contraseña',obscureText: true,),
        SizedBox(height: size.height*0.06),
        ElevatedButton(
          onPressed: (){
            Navigator.pushNamed(context, AppRoutes.rutaMenuPrincipal);
          },
          child: 
          const Text(
            'Iniciar Sesion', 
            style: TextStyle(
              color: Colors.black, 
              fontFamily: 'Comic Neue', 
              fontSize: 16)
          ),
        ),
        TextButton(
          onPressed: (){}, 
          child: const Text('¿Olvido su contraseña?', style: TextStyle(color: Colors.black, fontFamily: 'Comic Neue', fontSize: 16),)
        )
      ],
    );
  }
}