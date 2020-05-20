import 'package:flutter/material.dart';
import 'package:ageapp/Contenidos/LetrayAcordes/Canciones/PlasLetras.dart';


class chord extends StatefulWidget{
  chord({Key key, this.musicTitle}) : super(key: key);
  final int musicTitle;

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _chord();
  }
}

class _chord extends State<chord>{
  int tono=0;
  int letraOacorde=1;
  bool acordesview= false;
  String bottLetra = "Acordes";

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
                title: Text(""),//Text(letras().nombreCan(widget.musicTitle.toInt())),
        actions: <Widget>[
          Row(

            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Align(
                child: modAcordesView(),
              ),

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: RaisedButton(
                  shape: new RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(18.0),
                      side: BorderSide(color: Colors.red)),
                  color: Colors.white,
                  textColor: Colors.red,
                  padding: EdgeInsets.all(8.0),
                  onPressed: () {
                    setState(() {
                      if(letraOacorde==1){
                        bottLetra = "Letras";
                        acordesview= true;
                        letraOacorde=2;
                      }else{if(letraOacorde==2){
                        bottLetra = "Acordes";
                        acordesview= false;
                        letraOacorde=1;
                      }}

                    });
                  },
                  child: Text(
                    bottLetra,
                    style: TextStyle(
                      fontSize: 14.0,
                    ),
                  ),
                ),
              ),
            ],
          ),
          ],
      ),
      body: ListView(
          children: <Widget>[
            Container(
              child: Column(
                children: <Widget>[
                  Text("\n"),
                  Text(letras().nombreCan(widget.musicTitle.toInt()),textAlign: TextAlign.center, style: TextStyle(color: Colors.deepOrangeAccent,fontSize: 22,decoration: TextDecoration.underline,fontStyle: FontStyle.italic, fontWeight: FontWeight.bold),),
                  Text("\n"),
                  Text(letras().letrasand(tono, letraOacorde,widget.musicTitle.toInt()),textAlign: TextAlign.center, style: TextStyle(color: Colors.black87,fontSize: 20,decoration: TextDecoration.none,),),
                ],
              ),
            )
          ]
      )
    );
  }

  Widget modAcordesView(){
    if(acordesview){
      return

        Align(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              //Booton menos
              RawMaterialButton(
                onPressed: () {
                  setState(() {
                    if(tono == 0){
                      tono = 12;
                    }else{
                      tono--;
                    }

                  });
                },
                elevation: 2.0,
                fillColor: Colors.white,
                child: Icon(
                  Icons.remove,
                  size: 20.0,
                  color: Colors.red,
                ),
                padding: EdgeInsets.all(0.0),
                shape: CircleBorder(
                  side: BorderSide(color: Colors.red)
                ),
              ),

              //Botton maas
              RawMaterialButton(
                onPressed: () {
                  setState(() {
                    if(tono == 12){
                      tono = 0;
                    }else{
                      tono++;
                    }

                  });
                },
                elevation: 2.0,
                fillColor: Colors.white,
                child: Icon(
                  Icons.add,
                  size: 20.0,
                  color: Colors.red,
                ),
                padding: EdgeInsets.all(0.0),
                shape: CircleBorder(
                    side: BorderSide(color: Colors.red)
                ),
              )
            ],

      ),
        );
    } else{
      return Container();
    }
  }
}
