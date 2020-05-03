import 'package:flutter/material.dart';


class Regiones extends StatelessWidget {
  BoxDecoration MiCaja() {
    return BoxDecoration(
      color: Colors.pink,
      image: DecorationImage(
        image: AssetImage('assets/mapa.png'),
        fit: BoxFit.contain,
      ),
    );
  }

  BoxDecoration MiCaja2() {
    return BoxDecoration(
        border: Border.all(color: Colors.black)
    );
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Regiones"),
      ),
      body: ListView(
          scrollDirection: Axis.vertical,
          children: <Widget>[
            Container(
              color: Colors.greenAccent,
              //width: MediaQuery.of(context).size.width,
              //height: MediaQuery.of(context).size.height / 1.4,
              child: Padding(
                padding: const EdgeInsets.all(0.0),
                child: Container(
                  height: 200,
                  decoration: MiCaja(),
                  child: Cuadritos(context),
                ),
              ),
            ),
          ]
      ),
    );
  }

  Widget Cuadritos(BuildContext context) {
    int i = 0,
        j = 0,
        k = 0,
        l = 0;
    String nombre;
    var row = List(15);
    var contenedor = List(9);
    Column columna;
    Container cont;
    List<Widget>lista =new List<Widget>();

    for (i = 0; i < row.length; i++) {
      List<Widget>lista1 =new List<Widget>();
      for (j = 0; j < contenedor.length; j++) {
        k = i*contenedor.length+j+1;
        nombre = k.toString();
        contenedor[j] = Container(
          //width: MediaQuery.of(context).size.width/contenedor.length,
          //height: MediaQuery.of(context).size.height/21,
          decoration: MiCaja2(),
          child: Text(nombre),
        );
        //contenedor.add(contenedor[j]) ;
        lista1.add(contenedor[j]);
      }
      row[i] = Row(
        children: lista1
      );
      lista.add(row[i]);
    }
    columna = Column(
      children: lista
    );
    cont = Container(
      child: columna,
    );
    return cont;
  }
}