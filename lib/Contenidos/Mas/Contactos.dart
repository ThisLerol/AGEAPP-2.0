import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:ageapp/social_media_icons.dart';
import 'package:url_launcher/url_launcher.dart';

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
                child: Contacto(
                    imagen:'assets/fotorobin.jpg',
                    nombre: "Robin Rodriguez Pariona",
                    cargo: "Secretario General",
                    facebook: 'https://www.facebook.com/robindavid.rodriguezpariona',
                    instagram: 'https://www.instagram.com/robinageup/?hl=es-la',
                    nface:"Robin David Rodriguez Pariona",
                    ninsta:"robinageup",
                    posicion: 1
                ),
              ),
              InkWell(
                onTap: (){
                },
                child: Contacto(
                    imagen:'assets/fotojuank.jpg',
                    nombre: "JuanK Moreno",
                    cargo: "Presidente Estudiantil",
                    facebook: 'https://www.facebook.com/juank.morenosanchez',
                    instagram: 'https://www.instagram.com/juankamoreno717/?hl=es-la',
                    nface:"Juank Moreno S",
                    ninsta:"juankamoreno717",
                    posicion: 2),
              ),
              InkWell(
                onTap: (){
                },
                child: Contacto(
                    imagen:'assets/fotodanny.jpg',
                    nombre: "Danny Huamán",
                    cargo: "Vicepresidente Estudiantil",
                    facebook: 'https://www.facebook.com/danny.huaman.771',
                    instagram: '',
                    nface:"Danny Huamán",
                    ninsta:"",
                    posicion: 3),
              ),
              InkWell(
                onTap: (){
                },
                child: Contacto(
                    imagen:'assets/fotobeula.jpg',
                    nombre: "Beula Cabanillas",
                    cargo: "Secretaria Estudiantil",
                    facebook: 'https://www.facebook.com/beula.cabanillastuiro.9',
                    instagram: 'https://www.instagram.com/p/B85I68jBiFJ/',
                    nface:"Beula Cabanillas Tuiro",
                    ninsta:"beulaberenice",
                    posicion: 4),
              ),
              InkWell(
                onTap: (){
                },
                child: Contacto(
                    imagen:'assets/fotocriss.jpg',
                    nombre: "Crissbel Huamán",
                    cargo: "Tesorera Estudiantil",
                    facebook: 'https://www.facebook.com/crisbel.huamanverastegui',
                    instagram: 'https://www.instagram.com/bel.07cris/?hl=es-la',
                    nface:"Criss Huaman",
                    ninsta:"bel.07cris",
                    posicion: 5),
              ),
              InkWell(
                onTap: (){
                },
                child: Contacto(
                    imagen:'assets/fotoroberto.jpg',
                    nombre: "Roberto Huamán",
                    cargo: "Vocal",
                    facebook: 'https://www.facebook.com/roberto.huaman.palacios',
                    instagram: 'https://www.instagram.com/robertocarlosh.palacios/?hl=es-la',
                    nface:"Roberto Carlos Huaman Palacios",
                    ninsta:"robertocarlosh.palacios",
                    posicion: 6),
              ),
              InkWell(
                onTap: (){
                },
                child: Contacto(
                    imagen:'assets/fotorut.jpg',
                    nombre: "Rut Perez",
                    cargo: "Vocal",
                    facebook: 'https://www.facebook.com/rut.perez.184',
                    instagram: 'https://www.instagram.com/rip_saldarriaga/?hl=es-la',
                    nface:"Rut Pérez Saldarriaga",
                    ninsta:"rip_saldarriaga",
                    posicion: 7),
              ),
              InkWell(
                onTap: (){
                },
                child: Contacto(
                    imagen:'assets/fotomisael.jpg',
                    nombre: "Misael Torres",
                    cargo: "Vocal",
                    facebook: 'https://www.facebook.com/Misael.CBU',
                    instagram: 'https://www.instagram.com/misael.cbu/?hl=es-la',
                    nface:"Misael Torres",
                    ninsta:"misael.cbu",
                    posicion: 8),
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
  final String facebook;
  final String instagram;
  final String nface;
  final String ninsta;
  final String cargo;
  const Contacto({Key key, this.imagen, this.nombre,this.cargo,
    this.facebook, this.instagram ,this.nface,this.ninsta,this.posicion}): super(key:key);


  Widget build(BuildContext context){
    return Container(
        padding: const EdgeInsets.all(0),
        decoration: MiCaja(posicion),
        child: Row(children: <Widget>[
                        Container(
                          width: MediaQuery.of(context).size.width/(3.5),
                          child: ClipOval(
                            child: Image(
                              image: AssetImage(imagen),
                              fit: BoxFit.fill,
                            ),
                          ),
                          padding: EdgeInsets.all(5.0),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width/(7/5),
                          padding: EdgeInsets.all(5),
                          child: Column(
                            children: <Widget>[
                              Text(
                                nombre, style: TextStyle(
                                fontSize: 20.0,
                                fontStyle: FontStyle.italic,
                                color: Colors.black
                              ),),
                              Padding(
                                padding: const EdgeInsets.only(top: 0,bottom: 10),
                                child: Text(
                                  cargo,
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                    fontSize: 14.0,
                                    fontStyle: FontStyle.italic,
                                    color: Colors.redAccent
                                ),),
                              ),
                              Row(
                                  children: <Widget>[
                                    InkWell(
                                      onTap: ()=> launch(facebook),
                                        child: Align(
                                          alignment: Alignment.center,
                                          child: Container(
                                            padding: EdgeInsets.all(5.0),
                                              child: Row(
                                                children: <Widget>[
                                                  Icon(SocialMedia.facebook_squared,size: 25,color: Colors.indigo),
                                                  Container(
                                                    width: MediaQuery.of(context).size.width/5,
                                                      child: Text(nface,
                                                        style: TextStyle(fontSize: 12.0),
                                                        maxLines: 1,
                                                      ),),
                                                ],
                                              )
                                          ),
                                        ),
                                    ),
                                    InkWell(
                                      onTap: ()=> launch(instagram),
                                        child: Align(
                                          alignment: Alignment.centerRight,
                                          child: Container(
                                            padding: EdgeInsets.all(5.0),
                                             child: Row(
                                               children: <Widget>[
                                                 Icon(SocialMedia.instagram,size: 25, color: Colors.pink,),
                                                 Container(
                                                   width: MediaQuery.of(context).size.width/5,
                                                     child: Text(ninsta,
                                                       style: TextStyle(fontSize: 12.0),
                                                       maxLines: 1,
                                                     ))
                                               ],
                                             ),
                                          ),
                                        ),
                                    ),
                                  ],
                                  mainAxisSize: MainAxisSize.min,
                                ),
                            ],
                          ),
                        ),
                      ]
                  )
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
        color: Colors.grey[300],
        //color: Colors.yellow[100],
        borderRadius: BorderRadius.all(Radius.circular(18.0)),
      );
    }
  }
}