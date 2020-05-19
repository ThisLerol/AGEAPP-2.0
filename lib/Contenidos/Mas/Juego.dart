import 'package:flutter/material.dart';
import 'package:ageapp/Contenidos/HomePage.dart';
import 'package:flutter/services.dart';

class Juego extends StatefulWidget {
  @override
  _Juego createState() => _Juego();
}


class _Juego extends State<Juego>{

  @override
  void initState(){
    super.initState();
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
  }

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

  @override
  dispose(){
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.landscapeRight,
      DeviceOrientation.landscapeLeft,
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    super.dispose();
  }
}
