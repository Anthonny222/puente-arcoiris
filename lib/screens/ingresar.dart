import 'package:flutter/material.dart';
import 'package:puente_arcoiris/theme/app_theme.dart';


class IngresarScreen extends StatelessWidget {
   
  const IngresarScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {

    final size = MediaQuery.of(context).size;

    return Scaffold(
      body: Center(
         child: SingleChildScrollView(
          child: Container(
            width: size.width,
            height: size.height,
            decoration: const BoxDecoration(
              image: DecorationImage( image: AssetImage('assets/inicio.jpg'), fit: BoxFit.cover)
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  height: size.height * 0.08
                ),
                Image(
                  image: const AssetImage('assets/puente-arcoiris.png',),
                  fit: BoxFit.contain,
                  width: size.width * 0.6 ,
                ),
                SizedBox(
                  height: size.height * 0.47,
                ),
                ElevatedButton(
                  onPressed: (){}, 
                  child: const Text('Iniciar Sesion', style: TextStyle(color: Colors.black, fontFamily: 'Comic Neue', fontSize: 16),),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text('¿No tienes cuenta?', style: TextStyle(color: Colors.white, fontFamily: 'Comic Neue'),),
                    TextButton(
                      onPressed: (){}, 
                      child: const Text('Registrate', style: TextStyle(color: AppTheme.primary, fontFamily: 'Comic Neue', decoration: TextDecoration.underline),)
                    )
                  ],
                )
              ],
            ),
          ),   
         ),
      ),
    );
  }
}