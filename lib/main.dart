import 'dart:collection';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_database1/MainPage.dart';
import 'package:flutter/material.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp( const MyApp());
}

class MyApp extends StatefulWidget {
   const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

   Future<void> tumUrunler() async{

     var bilgi = HashMap<String, dynamic>();
     bilgi["urunad"] = "";
     bilgi["urunfiyat"] = 13;
     refUrunler.push().set(bilgi);

   }
  var refUrunler = FirebaseDatabase.instance.ref().child("urunler");

   late String urunAd;
   late int urunfiyat;


   @override
   void initState() {
     super.initState();
     tumUrunler();
   }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AnaSayfa(),
    );
  }
}
