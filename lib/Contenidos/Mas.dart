import 'package:ageapp/Contenidos/Mas/Contactos.dart';
import 'package:ageapp/Contenidos/Mas/Info.dart';
import 'package:ageapp/Contenidos/Mas/Juego.dart';
import 'package:ageapp/Contenidos/Mas/Regiones.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class Mas extends StatelessWidget {
  BoxDecoration MiCaja(){
    return BoxDecoration(
      color: Color(0xFFEEEEEE),
      borderRadius: BorderRadius.all(Radius.circular(10.0)),
    );
  }
  @override
  Widget build(BuildContext context){

    double tam = 10.0;
    return Scaffold(
        body:CustomScrollView(
                            primary: false,
                            slivers: <Widget>[
                              SliverAppBar(
                                expandedHeight: 200.0,
                                flexibleSpace: FlexibleSpaceBar(
                                  background: Image(
                                    image: AssetImage('assets/foto4.jpg'),
                                    fit: BoxFit.cover,
                                  ) ,
                                ),
                              ),
                              SliverPadding(
                                padding: const EdgeInsets.all(10),
                                sliver: SliverGrid.count(
                                  crossAxisSpacing: 10,
                                  mainAxisSpacing: 10,
                                  crossAxisCount: 3,
                                  children: <Widget>[
                                    InkWell(
                                      onTap: (){
                                        Navigator.push(context,
                                            MaterialPageRoute(builder: (context) => Regiones()));
                                        },
                                      child: Container(
                                        padding: const EdgeInsets.all(5),
                                        height: tam,
                                        decoration: MiCaja(),
                                        child: Center(
                                          child: Column(
                                            children: <Widget>[
                                             Container(
                                               child:Column(
                                                children: <Widget>[
                                                Container(
                                                  child: Icon(Icons.find_in_page, size: 50.0,/*color: Colors.redAccent,*/),
                                                  padding: EdgeInsets.all(5.0),
                                                ),
                                                Container(
                                                  padding: EdgeInsets.all(5),
                                                  child: Text(
                                                    "Regiones", style: TextStyle(
                                                    fontSize: 20.0,
                                                    fontStyle: FontStyle.italic,
                                                  ),),
                                                ),
                                              ]
                                              )
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),

                                    ),
                                    InkWell(
                                      onTap:(){
                                        Navigator.push(context,
                                            MaterialPageRoute(builder: (context) => Contactos()));
                                      },
                                      child: Container(
                                        padding: const EdgeInsets.all(5),
                                        height: tam,
                                        decoration: MiCaja(),
                                        child: Center(
                                          child: Column(
                                            children: <Widget>[
                                              Container(
                                                  child:Column(
                                                      children: <Widget>[
                                                        Container(
                                                          child: Icon(Icons.contacts, size: 45.0,/*color: Colors.redAccent,*/),
                                                          padding: EdgeInsets.all(10.0),
                                                        ),
                                                        Container(
                                                          child: Text(
                                                            "Contactos", style: TextStyle(
                                                            fontSize: 20.0,
                                                            fontStyle: FontStyle.italic,
                                                          ),),
                                                        ),
                                                      ]
                                                  )
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                    InkWell(
                                      onTap: (){
                                        Navigator.push(context,
                                            MaterialPageRoute(builder: (context) => Info()));
                                      },
                                      child: Container(
                                        padding: const EdgeInsets.all(5),
                                        height: tam,
                                        decoration: MiCaja(),
                                        child: Center(
                                          child: Column(
                                            children: <Widget>[
                                              Container(
                                                  child:Column(
                                                      children: <Widget>[
                                                        Container(
                                                          child: Icon(Icons.info, size: 45.0,/*color: Colors.redAccent,*/),
                                                          padding: EdgeInsets.all(10.0),
                                                        ),
                                                        Container(
                                                          padding: EdgeInsets.all(0),
                                                          child: Text(
                                                            "Más info", style: TextStyle(
                                                            fontSize: 20.0,
                                                            fontStyle: FontStyle.italic,
                                                          ),),
                                                        ),
                                                      ]
                                                  )
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                    InkWell(
                                      onTap: (){
                                        Navigator.push(context,
                                            MaterialPageRoute(builder: (context) => Juego()));
                                      },
                                      child: Container(
                                        padding: const EdgeInsets.all(5),
                                        height: tam,
                                        decoration: MiCaja(),
                                        child: Center(
                                          child: Column(
                                            children: <Widget>[
                                              Container(
                                                  child:Column(
                                                      mainAxisAlignment: MainAxisAlignment.center,
                                                      children: <Widget>[
                                                        Container(
                                                          child: Icon(Icons.videogame_asset, size: 45.0,/*color: Colors.redAccent,*/),
                                                          padding: EdgeInsets.all(10.0),
                                                        ),
                                                        Container(
                                                          padding: EdgeInsets.all(0),
                                                          child: Text(
                                                            "Juego", style: TextStyle(
                                                            fontSize: 20.0,
                                                            fontStyle: FontStyle.italic,
                                                          ),),
                                                        ),
                                                      ]
                                                  )
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
    );
  }
}