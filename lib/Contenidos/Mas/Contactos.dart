import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:ageapp/social_media_icons.dart';

class Contactos extends StatelessWidget{

  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Color(0xFFEEEEEE),
      body:CustomScrollView(
        primary: false,
        slivers: <Widget>[
          SliverAppBar(
            expandedHeight: 200.0,
            flexibleSpace: FlexibleSpaceBar(
              background: Image(
                image: AssetImage('assets/fotojdn.jpg'),
                fit: BoxFit.cover,
              ) ,
            ),
          ),
          SliverFixedExtentList(
            itemExtent: 110.0,
            delegate: SliverChildListDelegate([
              InkWell(
                onTap: (){
                },
                child: Contacto(imagen:'assets/fotorobin.jpg', nombre: "Robin Rodriguez Pariona",posicion: 1),
              ),
              InkWell(
                onTap: (){
                },
                child: Contacto(imagen:'assets/fotojuank.jpg', nombre: "JuanK",posicion: 2),
              ),
              InkWell(
                onTap: (){
                },
                child: Contacto(imagen:'assets/fotoaracely.jpg', nombre: "Araceli", posicion: 3),
              ),
              InkWell(
                onTap: (){
                },
                child: Contacto(imagen:'assets/fotoaracely.jpg', nombre: "Araceli",posicion: 4),
              ),
              InkWell(
                onTap: (){
                },
                child: Contacto(imagen:'assets/fotoaracely.jpg', nombre: "Araceli",posicion: 5),
              ),
              InkWell(
                onTap: (){
                },
                child: Contacto(imagen:'assets/fotoaracely.jpg', nombre: "Araceli",posicion: 6),
              ),
            ]
            ),
            ),
        ],
      ),
    );
  }
}

class Contacto extends StatelessWidget{
  final String imagen ;
  final String nombre ;
  final int posicion;
  const Contacto({Key key, this.imagen, this.nombre,this.posicion}): super(key:key);


  Widget build(BuildContext context){
    return Container(
        padding: const EdgeInsets.all(0),
        decoration: MiCaja(posicion),
        child: Center(
          child: Column(
            children: <Widget>[
              Container(
                  child:Row(
                      children: <Widget>[
                        Container(
                          width: 100.0,
                          child: ClipOval(
                            child: Image(
                              image: AssetImage(imagen),
                              fit: BoxFit.fill,
                            ),
                          ),
                          padding: EdgeInsets.all(5.0),
                        ),
                        Container(
                          padding: EdgeInsets.all(5),
                          child: Column(
                            children: <Widget>[
                              Text(
                                nombre, style: TextStyle(
                                fontSize: 20.0,
                                fontStyle: FontStyle.italic,
                                color: Colors.black
                              ),),
                              Row(

                                children: <Widget>[
                                  InkWell(
                                    onTap: (){},
                                      child: Container(
                                        padding: EdgeInsets.all(5.0),
                                          child: Icon(SocialMedia.facebook_squared,size: 25,color: Colors.indigo)
                                      ),
                                  ),
                                  InkWell(
                                    onTap: (){},
                                      child: Container(
                                        padding: EdgeInsets.all(5.0),
                                         child: Icon(SocialMedia.instagram,size: 25, color: Colors.pink,),
                                      ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ]
                  )
              ),
            ],
          ),
        ),
    );
  }

  BoxDecoration MiCaja(int posicion){
    int num;
    num=posicion;
    if(posicion%2!=0) {
      return BoxDecoration(
        color: Color(0xFFEEEEEE),
        //borderRadius: BorderRadius.all(Radius.circular(18.0)),
      );
    }else{
      return BoxDecoration(
        color: Colors.orange[100],
        borderRadius: BorderRadius.all(Radius.circular(18.0)),
      );
    }
  }
}