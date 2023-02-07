import 'package:flutter/material.dart';
import 'package:puente_arcoiris/screens/screens.dart';
import 'package:puente_arcoiris/theme/app_theme.dart';
import 'package:toggle_switch/toggle_switch.dart';



class MenuLoginScreen extends StatefulWidget {

  final int? initialIndex;

  const MenuLoginScreen({Key? key, this.initialIndex }) : super(key: key);

  @override
  State<MenuLoginScreen> createState() => MenuLoginScreenState();
}

class MenuLoginScreenState extends State<MenuLoginScreen> {

  late int?_initialIndex = widget.initialIndex;
  

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
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white54,
                    borderRadius: BorderRadius.circular(25)
                  ),
                  height: size.height*0.6,
                  width: size.width*0.77,
                  margin: EdgeInsets.only(top: size.height*0.07),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 20),
                    child: Column(
                      children: [
                        ToggleSwitch(
                          minWidth: 120,
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
                          initialLabelIndex: _initialIndex,                       
                          onToggle: (index){
                            _initialIndex = index;
                            setState(() {
                              
                            });
                          },
                        ),
                        if(_initialIndex == 0)
                          const LoginScreen()
                        else if(_initialIndex == 1)
                          const RegistrarseScreen()
                      ],
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



