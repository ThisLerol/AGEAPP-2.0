import 'package:flutter/material.dart';
import 'package:ageapp/Contenidos/Home.dart';
import 'package:ageapp/Contenidos/Mas.dart';
import 'package:ageapp/Contenidos/Biblioteca.dart';
import 'package:ageapp/Contenidos/Musica.dart';


class AllBar extends StatefulWidget{
  @override
  _AllBar createState() => new _AllBar();
}
class _AllBar extends State<AllBar> with SingleTickerProviderStateMixin{

  TabController _tabController;

  @override
  void initState(){
    super.initState();
    _tabController = new TabController(vsync: this,initialIndex: 0,length: 4 );
  }

  Widget build(BuildContext context){
    return new Scaffold(

      appBar: new AppBar(
        title: new Text("AGEAPP"),
        bottom: new TabBar(

            controller: _tabController,
            tabs: <Widget>
            [new Tab(icon: new Icon(Icons.home)),
             new Tab(icon: new Icon(Icons.music_note)),
              new Tab(icon: new Icon(Icons.view_column)),
              new Tab(icon: new Icon(Icons.add,size: 30)),
            ]
        ),
      ),
      body: new TabBarView(

        controller: _tabController,
          children: <Widget>[
            new Home(),
            new Musica(),
            new Biblioteca(),
            new Mas(),

          ]
      ),


    )
    ;
  }

}