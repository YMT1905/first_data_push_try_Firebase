import 'dart:collection';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';

class AnaSayfa extends StatelessWidget {

   AnaSayfa({super.key});

   String veri = "";

   Future<void> tumUrunler() async{

     Map<String,String> dataSolve={
       'name' : tfController.text,
       'price' : tf2Controller.text,
     };
     FirebaseDatabase.instance.ref().child("urunler").push().set(dataSolve);

   }

  var tfController = TextEditingController();
  var tf2Controller = TextEditingController();

  var refUrunler = FirebaseDatabase.instance.ref().child("urunler");
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("3Println"),
        backgroundColor: Colors.red,
        elevation: 0,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: TextField(
             controller: tfController,
              decoration: const InputDecoration(labelText: 'Ürün Adı:'),
              textAlign: TextAlign.start,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: TextField(
              controller: tf2Controller,
              decoration: const InputDecoration(labelText: 'Ürün Fiyatı:'),
              textAlign: TextAlign.start,
            ),
          ),

          ElevatedButton(onPressed: (){
            tumUrunler();
            }, child: Text("Kaydet"),
          ),
        ],
      ),
    );
  }
}
