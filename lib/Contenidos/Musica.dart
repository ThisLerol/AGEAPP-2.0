import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ageapp/Contenidos/Letra y Acordes/ChordMain.dart';
import 'package:ageapp/Contenidos/Letra y Acordes/Canciones/MusicaClass.dart';

class Musica extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _Musica();
  }
}

class _Musica extends State<Musica>{
  MusicaClass musicaData = new MusicaClass();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
        color: Colors.red[50],

        child: ListView(
          children:
          ListaCanciones(),
        )
    );
  }

  List<Widget> ListaCanciones(){
    int ai = 24;

    Color InterCalar(int i){
      if(i%2==0){
        return Colors.white;
      }else{
        return Colors.red[50];
      }
    }

    var arr = new List<Widget>(ai+1);

    for( var i = 0 ; i <= ai; i++ ) {

      arr[i] = Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: InterCalar(i),
          boxShadow: [
            BoxShadow(color: Colors.red[50], spreadRadius: 0),
          ],
        ),
       // color: InterCalar(i),
        //elevation: 0,
        //borderOnForeground: true,
        child: InkWell(
            child: Wrap(
              direction: Axis.horizontal,
              alignment: WrapAlignment.spaceBetween,
              crossAxisAlignment: WrapCrossAlignment.center,
              children: <Widget>[
                  Wrap(
                    crossAxisAlignment: WrapCrossAlignment.center,
                    alignment: WrapAlignment.end,
                    children: <Widget>[
                      Padding(
                        padding:  EdgeInsets.fromLTRB(8, 0, 0, 0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children:<Widget>[
                            Container(width: MediaQuery.of(context).size.width/1.5,child: Text("$i. "+musicaData.getnombre(i),maxLines: 1,textAlign: TextAlign.start,style: TextStyle(fontWeight: FontWeight.normal, fontSize: 20, ),),),
                            Text("Autor Desconocido", textAlign: TextAlign.start,style: TextStyle(fontWeight: FontWeight.normal, fontSize: 15, color: Colors.red[300]),)
                          ]
                        ),
                      ),
                        Container(
                        width: 0,
                        height: 60,
                      ),
                    ],
                  ),
                Wrap(
                  alignment: WrapAlignment.spaceAround,
                    children: <Widget>[
                      InkWell(
                        splashColor: Colors.red.withAlpha(30),
                        onTap: () {
                        Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => chord(musicTitle: i)),
                        );},
                        child: Padding(
                          padding:  EdgeInsets.fromLTRB(0, 0, 7, 0),
                          child: Icon(CupertinoIcons.double_music_note,size: 25,),
                        ),
                      ),
                      Padding(

                        padding:  EdgeInsets.fromLTRB(0, 0, 5, 0),
                        child: Icon(CupertinoIcons.play_arrow_solid,size: 25,),
                      ),
                      Padding(
                        padding:  EdgeInsets.fromLTRB(0, 0, 7, 0),
                        child: Icon(Icons.file_download ,size: 25,),
                      ),
                    ],
                  )
                ],
              )
        ),
      );
    }

    return arr;
  }
}
