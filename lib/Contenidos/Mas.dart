import 'package:ageapp/Contenidos/Mas/Contactos.dart';
import 'package:ageapp/Contenidos/Mas/Juego.dart';
import 'package:ageapp/Contenidos/Mas/Regiones.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';


class Mas extends StatefulWidget {
  @override
  _MasState createState() => _MasState();
}
class _MasState extends State<Mas>{
  BoxDecoration MiCaja(){
    return BoxDecoration(
      color: Color(0xFFEEEEED),
      borderRadius: BorderRadius.all(Radius.circular(9.0)),
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
              childAspectRatio: 2 / 2.3,
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
                            width: ((MediaQuery.of(context).size.width - 40) /6),
                            height:((MediaQuery.of(context).size.width - 40) /6),
                            child: Icon(Icons.find_in_page, size: ((MediaQuery.of(context).size.width - 40) /6) ,/*color: Colors.redAccent,*/),
                            padding: EdgeInsets.all(0.0),
                          ),
                          Container(
                            height:((MediaQuery.of(context).size.width - 40) /6),
                            padding: EdgeInsets.all(5),
                            child: FittedBox(
                              fit: BoxFit.contain,
                              child: Text(
                                "Regiones", style: TextStyle(
                                fontSize: 60.0,
                                fontStyle: FontStyle.italic,
                              ),),
                            ),
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
                                width: ((MediaQuery.of(context).size.width - 40) /6),
                                height:((MediaQuery.of(context).size.width - 40) /6),
                                child: Icon(Icons.contacts, size: ((MediaQuery.of(context).size.width - 40) /6),/*color: Colors.redAccent,*/),
                                padding: EdgeInsets.only(),
                              ),
                              Container(
                                height:((MediaQuery.of(context).size.width - 40) /6),
                                child: FittedBox(
                                  fit: BoxFit.contain,
                                  child: Text(
                                    "Contactos", style: TextStyle(
                                    fontSize: 60.0,
                                    fontStyle: FontStyle.italic,
                                  ),),
                                ),
                              ),
                            ]
                        )

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
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Container(
                                width: ((MediaQuery.of(context).size.width - 40) /6),
                                height:((MediaQuery.of(context).size.width - 40) /6),
                                child: Icon(Icons.videogame_asset, size: ((MediaQuery.of(context).size.width - 40) /6),/*color: Colors.redAccent,*/),
                                padding: EdgeInsets.all(0.0),
                              ),
                              Container(
                                //width: ((MediaQuery.of(context).size.width - 40) /6),
                                height:((MediaQuery.of(context).size.width - 40) /6),
                                padding: EdgeInsets.all(5),
                                child: FittedBox(
                                  fit: BoxFit.fitWidth,
                                  child: Text(
                                    "AgeGame", style: TextStyle(
                                    fontSize: 20.0,
                                    fontStyle: FontStyle.italic,
                                  ),),
                                ),
                              ),
                            ]
                        )
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




