import 'package:flutter/material.dart';
import 'package:ageapp/Contenidos/HomePage.dart';


class Juego extends StatelessWidget{

  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("Juego: Michi (#)"),
      ),
      body: MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    ),
    );

  }
}
