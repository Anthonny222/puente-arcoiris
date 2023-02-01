// Aqui se crea todo el CRUD 

import 'package:cloud_firestore/cloud_firestore.dart';

FirebaseFirestore db = FirebaseFirestore.instance;


Future<List> getFuneraria() async {

  List funeraria = [];
  
  CollectionReference collectionReferenceUsers = db.collection('funeraria'); // Referenciar a la firestore 

  QuerySnapshot queryFuneraria = await collectionReferenceUsers.get(); // traer de la coleccion de Firestore


  queryFuneraria.docs.forEach((element) {  // Instancia en el docs para traer todos los elementos
    funeraria.add(element.data()); // agregarmos al array antes creado la data que se trajo
  });

  return funeraria;

}

Future<void> addUsers(String name, String raza, int edad, String enfermedad, String descripcion) async {

  await db.collection('salud').add({"nombre": name,  "raza": raza, "edad": edad, "enfermedad": enfermedad, "descripcion": descripcion});



}