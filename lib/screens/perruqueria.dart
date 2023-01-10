import 'package:flutter/material.dart';

class PerruqueriaScreen extends StatelessWidget {
   
  const PerruqueriaScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Perruqeria'),
      ),
      body: Center(
         child: Text('PerruqueriaScreen'),
      ),
    );
  }
}