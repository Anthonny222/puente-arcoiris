// Aqui se crea todo el CRUD 

import 'package:cloud_firestore/cloud_firestore.dart';

FirebaseFirestore db = FirebaseFirestore.instance;


Future<List> getUsers() async {

  List users = [];
  
  CollectionReference collectionReferenceUsers = db.collection('users'); // Referenciar a la firestore 

  QuerySnapshot queryUsers = await collectionReferenceUsers.get(); // traer de la coleccion de Firestore


  queryUsers.docs.forEach((element) {  // Instancia en el docs para traer todos los elementos
    users.add(element.data()); // agregarmos al array antes creado la data que se trajo
  });

  return users;

}