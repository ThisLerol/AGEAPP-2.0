import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ageapp/Contenidos/Letra y Acordes/ChordMain.dart';

class Musica extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _Musica();
  }
}

class _Musica extends State<Musica>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
        child: ListView(
          children:
            ListaCanciones(),
        )
    );
  }

  List<Widget> ListaCanciones(){
    int ai = 99;
    var arr = new List<Widget>(ai+1);

    for( var i = 0 ; i <= ai; i++ ) {

      arr[i] = Card(
        elevation: 5,
        borderOnForeground: true,
        child: InkWell(
            splashColor: Colors.blue.withAlpha(30),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => chord(musicTitle: "Cancion $i")),
              );
            },

            child: Container(
              child: Row(
                children: <Widget>[
                  Padding(
                    padding:  EdgeInsets.all(17.0),
                    child: Icon(Icons.brightness_1, size: 10,),
                  ),
                  Padding(
                    child: Text("Cancion $i", textAlign: TextAlign.left,style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),),
                    padding: EdgeInsets.all(1.0),
                  ),
                  Container(
                    width: 160,
                  ),
                  Padding(
                    padding:  EdgeInsets.all(5.0),
                    child: Icon(CupertinoIcons.right_chevron),
                  ),
                  Padding(
                    padding:  EdgeInsets.all(5.0),
                    child: Icon(CupertinoIcons.play_arrow_solid),
                  ),
                  Padding(
                    padding:  EdgeInsets.all(5.0),
                    child: Icon(CupertinoIcons.bookmark_solid),
                  )
                ],
              ),

            )
        ),
      );
    }

    return arr;
  }
}
