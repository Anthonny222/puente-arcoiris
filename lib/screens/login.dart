import 'package:flutter/material.dart';
import 'package:puente_arcoiris/theme/app_theme.dart';
import 'package:toggle_switch/toggle_switch.dart';

class LoginScreen extends StatefulWidget {
  

   
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {

    final size = MediaQuery.of(context).size;
    int opcion = 0;

    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Container(
            width: size.width,
            height: size.height,
            decoration: const BoxDecoration(
              image: DecorationImage(image: AssetImage('assets/inicio.jpg'), fit: BoxFit.cover),
            ),
            child: Column(
              children: [
                SizedBox(
                  height: size.height*0.1,
                ),
                Image(image: const AssetImage('assets/puente-arcoiris.png'),
                  fit: BoxFit.contain,
                  width: size.width * 0.4 ,
                ),
                Container(
                  color: Colors.white54,
                  height: size.height*0.6,
                  width: size.width*0.75,
                  margin: EdgeInsets.only(top: size.height*0.07),
                  child: Column(
                    children: [
                      ToggleSwitch(
                        minWidth: 120.0,
                        minHeight: 45,
                        cornerRadius: 50.0,
                        activeBgColors: const [[AppTheme.primary], [AppTheme.primary]],
                        activeFgColor: const Color.fromARGB(255, 0, 0, 0),
                        inactiveBgColor: Colors.grey,
                        inactiveFgColor: Colors.white,
                        initialLabelIndex: 0,
                        totalSwitches: 2,
                        labels: const ['Iniciar Sesion', 'Registrarse'],
                        radiusStyle: true,
                        onToggle: (opcion){
                          
                          setState(() {
                            
                          });
                        
                        },
                      ),
                      if (opcion == 1)
                        Container(child: Text('Hola Registrarse'),)
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}