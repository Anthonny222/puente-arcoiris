import 'package:flutter/material.dart';
import 'package:puente_arcoiris/services/firebase/firebase_service.dart';


class FunerariaScreen extends StatelessWidget {
   
  const FunerariaScreen({Key? key}) : super(key: key);
    
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: getUsers(),
      builder: ((context, snapshot) {

        if(snapshot.hasData){
          return ListView.builder(
            itemCount: snapshot.data?.length,
            itemBuilder: ((context, index) {
              return Text(snapshot.data?[index]['nombre']);
            })
          );
        }else{
          return const Center(child: CircularProgressIndicator());
        }
      })
    );
  }
}



