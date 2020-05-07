import 'package:ageapp/Contenidos/Mas/TodasLasRegiones/RegionPorRegion.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Regiones extends StatelessWidget {

  Widget build(BuildContext context) {
    return Scaffold(
      body:CustomScrollView(
        primary: false,
        slivers: <Widget>[
          SliverAppBar(
            iconTheme: IconThemeData(color: Colors.red),
            expandedHeight: 400.0,
            flexibleSpace: FlexibleSpaceBar(
              background: Image(
                    image: AssetImage('assets/mapa.jpg'),
                    fit: BoxFit.cover,
                  ),
            ),
          ),
          SliverFixedExtentList(
            itemExtent: 150,
            delegate: SliverChildListDelegate([
              Container(
                color: Colors.white,
                //color: Colors.grey[300],
                child: _Regiones(),),
            ]),
          ),
          SliverFixedExtentList(
            itemExtent: 300,
            delegate: SliverChildListDelegate([
              Container(
                color: Colors.white,
                //color: Colors.grey[300],
                child: Container(
                  padding: EdgeInsets.all(15.0),
                  child: Text("La Asociación de Grupos Evangélicos Universitario del Perú esta distribuida en 5 regiones, esto para una mejor incidencia misionera en las universidades debido al desafio geográfico que nos brinda nuestro pais. Por otra parte, de esta forma se brindan a los grupos afiliados y fraternos facilidades administrativas y pastorales, de esta forma cada region cuenta con una junta directiva regional estudiantil y un acompañamiento formativo y pastoral por medio de los directores regionales.",
                    style: TextStyle(
                      fontSize: 17.0,
                      fontStyle: FontStyle.italic,
                      color: Colors.blueGrey[900],
                    ),
                    textAlign: TextAlign.justify,
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

class _Regiones extends StatelessWidget{
  BoxDecoration MiCaja(){
    return BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.all(Radius.circular(18.0)),
    );
  }

  Widget build(BuildContext context){
    return Container(
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          InkWell(
            onTap: (){
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => RegionPorRegion(numero: 1,)));
            },
            child: Container(
              padding: EdgeInsets.only(left: 10.0,right: 5.0,top:15,bottom: 15),
              width: 130,
              child: Material(
                elevation: 7.0,
                borderRadius: BorderRadius.all(Radius.circular(38.0)),
                shadowColor: Color(0XFF9E9E9E),
                child: ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(38.0)),
                  child: Image(
                    image: AssetImage('assets/RCC.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ),
          InkWell(
            onTap: (){
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => RegionPorRegion(numero: 2,)));
            },
            child: Container(
              padding: EdgeInsets.only(left: 5.0,right: 5.0,top:15,bottom: 15),
              width: 130,
              child: Material(
                elevation: 7.0,
                borderRadius: BorderRadius.all(Radius.circular(38.0)),
                shadowColor: Color(0XFF9E9E9E),
                child: ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(38.0)),
                  child: Image(
                    image: AssetImage('assets/RN.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ),
          InkWell(
            onTap: (){
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => RegionPorRegion(numero: 3,)));
            },
            child: Container(
              padding: EdgeInsets.only(left: 5.0,right: 5.0,top: 15,bottom:15),
              width: 130,
              child: Material(
                elevation: 7.0,
                borderRadius: BorderRadius.all(Radius.circular(38.0)),
                shadowColor: Color(0XFF9E9E9E),
                child: ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(38.0)),
                  child: Image(
                    image: AssetImage('assets/RCO.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ),
          InkWell(
            onTap: (){
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => RegionPorRegion(numero: 4,)));
            },
            child: Container(
              padding: EdgeInsets.only(left: 5.0,right: 5.0,top: 15,bottom: 15),
              width: 130,
              child: Material(
                elevation: 7.0,
                borderRadius: BorderRadius.all(Radius.circular(38.0)),
                shadowColor: Color(0XFF9E9E9E),
                child: ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(38.0)),
                  child: Image(
                    image: AssetImage('assets/RO.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ),
          InkWell(
            onTap: (){
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => RegionPorRegion(numero: 5,)));
            },
            child: Container(
              padding: EdgeInsets.only(left: 5.0,right: 10.0,top: 15,bottom: 15),
              width: 130,
              child: Material(
                elevation: 7.0,
                borderRadius: BorderRadius.all(Radius.circular(38.0)),
                shadowColor: Color(0XFF9E9E9E),
                child: ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(38.0)),
                  child: Image(
                    image: AssetImage('assets/RS.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}