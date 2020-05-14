import 'package:flutter/material.dart';
import 'package:ageapp/Contenidos/Home.dart';
import 'package:ageapp/Contenidos/Mas.dart';
import 'package:ageapp/Contenidos/Books/book.dart';
import 'package:ageapp/Contenidos/Materiales.dart';
import 'package:ageapp/Contenidos/Musica.dart';
import 'package:ageapp/social_media_icons.dart';
import 'package:url_launcher/url_launcher.dart';

class BarImage extends StatefulWidget{

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _BarImage();
  }
}

class _BarImage extends State<BarImage>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return //ImagenBar();

     Container(
      child: Column(
        children: <Widget>[ImagenBar(),
          AllBar(),
        ],
      ),
      color: Colors.blue,
    );
  }


}


class AllBar extends StatefulWidget{
  @override
  _AllBar createState() => new _AllBar();
}
class _AllBar extends State<AllBar> with SingleTickerProviderStateMixin{

  TabController _tabController;

  @override
  void initState(){

    super.initState();
    _tabController = new TabController(vsync: this,initialIndex: 0,length: 5, );
  }

  Widget build(BuildContext context){
    return new Scaffold(
      appBar: new AppBar(
        actions: <Widget>[
          Padding(child: InkWell(child:Icon(SocialMedia.facebook_squared,size: 18, ),onTap: () => launch('https://www.fb.com/ageup.ifes'),),padding: EdgeInsets.all(5.0),),
          Padding(child: InkWell(child:Icon(SocialMedia.instagram,size: 18, ),onTap: () => launch('https://www.instagram.com/ageup.ifes/'),),padding: EdgeInsets.all(5.0),),
          Padding(child: InkWell(child:Icon(SocialMedia.youtube_play,size: 18, ),onTap: () => launch('https://www.youtube.com/channel/UCBmBKVnvpnw7rV7XBokcvZQ'),),padding: EdgeInsets.all(5.0),),
          Padding(padding: EdgeInsets.all(5.0),),
        ],
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
           Text("AGEAPP"),
          ],
        ),
        bottom: new TabBar(
            isScrollable: true,
            controller: _tabController,
            tabs: <Widget>
            [
            Container(child: new Tab(icon:  new Icon(Icons.info_outline),),width: MediaQuery.of(context).size.width/6,),
            Container(child: new Tab(icon: new Icon(Icons.music_note)),width: MediaQuery.of(context).size.width/6,),
            Container(child: new Tab(icon: new Icon(Icons.book)),width: MediaQuery.of(context).size.width/6,),
              Container(child: new Tab(icon: new Icon(Icons.library_books)),width: MediaQuery.of(context).size.width/6,),
            Container(child: new Tab(icon: new Icon(Icons.add,size: 30)),width: MediaQuery.of(context).size.width/6,),
              //PONES MAS Y PONES EL ANCHO
              ]
        ),
      ),
      body: new TabBarView(
        controller: _tabController,
          children: <Widget>[
            new Home(),
            new Musica(),
            new Biblioteca(),
            new Materiales(),
            new Mas(),
            //PONES MAS
           ]
      ),
    )
    ;
  }
}

//Cargando la imagen

class ImagenBar extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _ImagenBar();
  }
}

class _ImagenBar extends State<ImagenBar> {
  @override
  Widget build(BuildContext context){
    return  Image.asset('assets/AGEUP.jpg',height: 367,width: 367,fit: BoxFit.contain,);
  }

}