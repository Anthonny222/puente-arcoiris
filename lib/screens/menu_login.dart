import 'package:flutter/material.dart';
import 'package:puente_arcoiris/screens/screens.dart';
import 'package:puente_arcoiris/theme/app_theme.dart';
import 'package:toggle_switch/toggle_switch.dart';



class MenuLoginScreen extends StatefulWidget {
  

   
  const MenuLoginScreen({Key? key}) : super(key: key);

  @override
  State<MenuLoginScreen> createState() => _MenuLoginScreenState();
}

class _MenuLoginScreenState extends State<MenuLoginScreen> {

  int? initialIndex = 0;
  
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
                ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Container(
                    color: Colors.white54,
                    height: size.height*0.6,
                    width: size.width*0.75,
                    margin: EdgeInsets.only(top: size.height*0.07),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 20),
                      child: Column(
                        children: [
                          ToggleSwitch(
                            minWidth: 110,
                            minHeight: 45,
                            cornerRadius: 50.0,
                            activeBgColors: const [[AppTheme.primary], [AppTheme.primary]],
                            activeFgColor: const Color.fromARGB(255, 0, 0, 0),
                            // inactiveBgColor: Colors.grey,
                            inactiveFgColor: Colors.white,
                            
                            changeOnTap: false,
                            totalSwitches: 2,
                            labels: const ['Iniciar Sesion', 'Registrarse'],
                            radiusStyle: true,
                            initialLabelIndex: initialIndex,
                            onToggle: (index){
                              setState(() {
                                initialIndex  = index;
                              });
                            },
                          ),
                          if(initialIndex == 0)
                            LoginScreen()
                          else if(initialIndex == 1)
                            Text('Soy un Registrarse')
                        ],
                      ),
                    ),
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



