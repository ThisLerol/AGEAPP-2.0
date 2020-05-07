import 'dart:ui';
import 'package:ageapp/Contenidos/Letra y Acordes/Canciones/MusicaClass.dart';
import 'package:flutter/material.dart';
import 'package:ageapp/Contenidos/Letra y Acordes/Canciones/PlasLetras.dart';

class Buscar extends SearchDelegate<String>{

  MusicaClass musicaData = new MusicaClass();
  var musicas = [];
  void rellenar(){
    for( int i = 0 ; i > 23; i++ ) {
      musicas[i]=musicaData.getnombre(i);
    }
  }




  @override
  List<Widget> buildActions(BuildContext context) {
    // Acciones para la barra de aplicaciones
    rellenar();
    return [
      IconButton(
        icon: Icon(Icons.clear),
        onPressed: (){
          query="";
        },
      ),
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    // Icono principal a la izquierda de la barra de aplicaciones

    return IconButton(
        icon:AnimatedIcon(
          icon:AnimatedIcons.menu_arrow,
          progress: transitionAnimation,
        ),
        onPressed: (){
          close(context, null);
        });
  }

  @override
  Widget buildResults(BuildContext context) {
    // mostrar algún resultado basado en la selección
    return Center(
        child: Container(
          height: 100.0,
          width: 100.0,
          child: Card(
            color:Colors.blue,
            child: Center(
              child: Text(query),
            ),
          ),
        )
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    // Mostrar cuando alguien busca algo

    final suggestionList  = query.isEmpty ? musicas
        :musicas.where((p)=>p.startsWith(query)).toList();

    return ListView.builder(
      itemBuilder: (context,index) => ListTile(
        leading: Icon(Icons.book),
        title:RichText(
          text:TextSpan(
              text:suggestionList[index].substring(0,query.length),
              style: TextStyle(
                  color:Colors.blue, fontWeight: FontWeight.bold),
              children: [
                TextSpan(
                    text:suggestionList[index].substring(query.length),
                    style: TextStyle(color:Colors.grey))
              ]),
        ),
        onTap: (){

        },
      ),

      itemCount: suggestionList.length,
    );
  }

}