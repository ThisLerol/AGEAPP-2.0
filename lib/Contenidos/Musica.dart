import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ageapp/Contenidos/LetrayAcordes/ChordMain.dart';
import 'package:ageapp/Contenidos/LetrayAcordes/Canciones/MusicaClass.dart';
import 'package:url_launcher/url_launcher.dart';

class Musica extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _Musica();
  }
}

class _Musica extends State<Musica>{
  List<String> test, sample, _dat1;
  String texto = " ";
  MusicaClass musicaData = new MusicaClass();
  var controller = 0;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      // color: Colors.red[50],
      body:
      ListView(
        children:
        //ListaCanciones(),
        CancionesBuscadas(texto),
      ),
    );
  }

  List<Widget> CancionesBuscadas(String text){
    var nombresBus = <String>[];
    var nombresIndex = <int>[];

    int cont = 0;
    for( var i = 0 ; i <= musicaData.getnombreListancho()-1; i++ ) {
      if(musicaData.getnombre(i).toLowerCase().contains(text.toLowerCase())){
        nombresBus.add(musicaData.getnombre(i));
        nombresIndex.add(i);
        cont++;
      }
    }
    var arr = new List<Widget>(cont+1);

    Color InterCalar(int i){
      if(i%2==0){
        return Colors.white;
      }else{
        return Colors.red[50];
      }
    }
    var a = 0;
    for( var i = 1 ; i <= cont; i++ ){

      arr[i]= Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: InterCalar(i),
          boxShadow: [
            BoxShadow(color: Colors.red[50], spreadRadius: 0),
          ],
        ),
        child: Wrap(
            alignment: WrapAlignment.spaceBetween,
            crossAxisAlignment: WrapCrossAlignment.center,
            direction: Axis.horizontal,
            children: <Widget>[
              InkWell(
                  child: Wrap(
                    direction: Axis.horizontal,
                    alignment: WrapAlignment.spaceEvenly,
                    crossAxisAlignment: WrapCrossAlignment.center,
                    children: <Widget>[
                      Wrap(
                        crossAxisAlignment: WrapCrossAlignment.center,
                        alignment: WrapAlignment.end,
                        children: <Widget>[
                          Padding(
                            padding:  EdgeInsets.fromLTRB(8, 0, 0, 0),
                            child: InkWell(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => chord(musicTitle: nombresIndex[i-1])),
                                );},
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children:<Widget>[
                                    //Text(musicaData.getLinksDrive(nombresIndex[a]).toString()),
                                    Container(width: MediaQuery.of(context).size.width/1.5,child: Text("$i. "+nombresBus[i-1].toString(),maxLines: 1,textAlign: TextAlign.start,style: TextStyle(fontWeight: FontWeight.normal, fontSize: 20, ),),),
                                    Text(musicaData.getAutores(nombresIndex[i-1]), textAlign: TextAlign.start,style: TextStyle(fontWeight: FontWeight.normal, fontSize: 15, color: Colors.red[300]),)
                                  ]
                              ),
                            ),
                          ),
                          Container(
                            width: 0,
                            height: 60,
                          ),
                        ],
                      ),

                    ],
                  )
              ),
              Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: RaisedButton(

                    onPressed: (){
                      if(musicaData.getLinksDrive(nombresIndex[i-1])=="-"){
                      }else{
                        launch(musicaData.getLinksDrive(nombresIndex[i-1]).toString());
                      }
                    },
                    color: InterCalar(i),
                    elevation: 0,

                    child: Icon(Icons.play_arrow),
                  )
              ),
            ]),
      );
      a++;
    }
    arr[0]=Container(
      width: 300,
      padding: EdgeInsets.symmetric(horizontal: 20),
      height: 50,
      decoration: BoxDecoration(
          color: Colors.white70,
          borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(15.0),
              bottomLeft: Radius.circular(15.0),
              topLeft: Radius.circular(15.0),
              topRight: Radius.circular(15.0))),
      child: TextField(
        style: new TextStyle(color: Colors.black54),
        decoration: InputDecoration(
          contentPadding: EdgeInsets.only(top: 15.0),
          border: InputBorder.none,
          hintText: 'Buscar...',
          hintStyle: TextStyle(color: Colors.grey, fontSize: 12.0),
          labelStyle: TextStyle(color: Colors.white),
          prefixIcon: Icon(Icons.search, color: Colors.grey),
        ),
        onChanged: (String text) {
          setState(() {
            print(text);
            texto = text;
            CancionesBuscadas(texto);
          });
        },
      ),
    );
    return arr;
  }

}
