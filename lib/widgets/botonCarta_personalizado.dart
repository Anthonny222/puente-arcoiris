
import 'package:flutter/material.dart';
import 'package:puente_arcoiris/theme/app_theme.dart';

class CartaBotonPersonalizado extends StatelessWidget {
  
  final String titulo;
  final String kgTipo; 
  final String descripcion; 
  final String image; 
  final String precio; 
  
  const CartaBotonPersonalizado({
    
    Key? key, required this.titulo, required this.kgTipo, required this.descripcion, required this.image, required this.precio,
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {

    final size = MediaQuery.of(context).size;

    return SizedBox(
      width: size.width *0.9,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 3, vertical: 6),
        child: TextButton(
          style: TextButton.styleFrom(
            backgroundColor: Colors.grey[100],
            foregroundColor: AppTheme.primary,     
          ),
          child: Row(
            children: [
              Image(image: AssetImage(image), fit: BoxFit.cover),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(titulo, style: const TextStyle(fontFamily: 'Comic Neue Bold', fontSize: 18, color: Colors.black)),
                    Text(kgTipo, style: const TextStyle(fontFamily: 'Comic Neue Bold', fontSize: 18, color: Colors.black)),
                    const SizedBox(height: 20,),
                    SizedBox( width: 200, child: Text(descripcion, maxLines: 4, overflow: TextOverflow.ellipsis, style: const TextStyle(fontFamily: 'Comic Neue', fontSize: 17, color: Colors.black))),
                    const SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        const SizedBox(width: 130,),
                        Text('\$ $precio', style: const TextStyle(fontFamily: 'Comic Neue Bold', color: Colors.black))
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
          onPressed: (){},
        ),
      ),
    );
  }
}