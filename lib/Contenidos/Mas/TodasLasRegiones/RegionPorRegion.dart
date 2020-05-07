import 'package:flutter/material.dart';

class RegionPorRegion extends StatelessWidget {
  final int numero;
  const RegionPorRegion ({Key key, this.numero}): super(key:key);
  @override
  Widget build(BuildContext context){
    return new Scaffold(
      body:CustomScrollView(
        primary: false,
        slivers: <Widget>[
          FotoRegion(numero),
          Cuerpo(numero),
          Decripcion(numero, context),
        ],
      ),
    );
  }

  SliverAppBar FotoRegion(int numero){
    int num = numero;
    String titulo;
    String imagen;

    switch(num) {
      case 1: {
        imagen = 'assets/fondo.jpg';
      }
      break;

      case 2: {
        imagen = 'assets/fondonorte.jpg';
      }
      break;

      case 3: {
        imagen = 'assets/fondocentrooriente.jpg';
      }
      break;

      case 4: {
        imagen = 'assets/fondooriente.jpg';
      }
      break;

      case 5: {
        imagen = 'assets/fondosur.jpg';
      }
      break;
    }

    return SliverAppBar(
      iconTheme: IconThemeData(color: Colors.white),
      expandedHeight: 200.0,
      flexibleSpace: FlexibleSpaceBar(
        background: Image(
          image: AssetImage(imagen),
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  SliverFixedExtentList Cuerpo(int numero){
    int num = numero;
    String titulo;
    String imagen;
    String descripcion;

    switch(num) {
      case 1: {
        titulo = "Región Costa Centro";
        imagen = 'assets/costacentro2.jpg';
      }
      break;

      case 2: {
        titulo = "Región Norte";
        imagen = 'assets/norte2.jpg';
      }
      break;

      case 3: {
        titulo = "Región Centro Oriente";
        imagen = 'assets/centrooriente2.jpg';
      }
      break;

      case 4: {
        titulo = "Región Oriente";
        imagen = 'assets/oriente2.jpg';
      }
      break;

      case 5: {
        titulo = "Región Sur";
        imagen = 'assets/sur2.jpg';
      }
      break;
    }
    return SliverFixedExtentList(
      itemExtent: 150,
      delegate: SliverChildListDelegate([
        Row(
          children: <Widget>[
            Container(
              color: Colors.orange,
              //color: Colors.grey[300],
               child: Text(titulo)),
            Container(
                   width: 100,
                    child: ClipOval(
                       child: Image(
                        image: AssetImage(imagen),
                        ),
                    ),
            ),
          ],
        ),
      ]),
    );
  }

  SliverFixedExtentList Decripcion(int nuemro, BuildContext context){
    int num = numero;
    String titulo;
    String imagen;
    String descripcion;

    switch(num) {
      case 1: {
        descripcion ="Aquí la info";
      }
      break;

      case 2: {
        descripcion ="Aquí la info";
      }
      break;

      case 3: {
        descripcion ="Centro Oriente esta compuesto por grupos estudiantiles en las regiones de: Huancayo, Huánuco, Ayacucho, Cerro de Pasco, Tingo María, Pucallpa, Oxapampa y Huancavelica. Tierras diversas con alrededor de 9 universidades que cuentan con Comunidades Biblicas Universitarias actualmente activas. Cada CBU es hogar, amor, pasión, lucha y fuerza en diversidad unida.";
      }
      break;

      case 4: {
        descripcion ="Aquí la info";
      }
      break;

      case 5: {
        descripcion ="Aquí la info";
      }
      break;
    }
    return SliverFixedExtentList(
      itemExtent: 350,
      delegate: SliverChildListDelegate([
                  Row(
                    children: <Widget>[
                       Container(
                        width:  MediaQuery.of(context).size.width,
                        padding: EdgeInsets.all(10.0),
                        color: Colors.red,
                         //color: Colors.grey[300],
                        child: Text(descripcion,textAlign: TextAlign.justify, style: TextStyle(fontSize: 20.0),)),
          ],
        ),
      ]),
    );
  }

}