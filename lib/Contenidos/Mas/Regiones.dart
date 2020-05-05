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
            expandedHeight: 300.0,
            flexibleSpace: FlexibleSpaceBar(

              background: ClipRRect(
                child: Image(
                    image: AssetImage('assets/mapa.png'),
                    fit: BoxFit.contain,
                  ),
              ),
            ),
          ),
          SliverFixedExtentList(
            itemExtent: 200,
            delegate: SliverChildListDelegate([
              Container(
                color: Colors.grey[400],
                child: _Regiones(),),
              Container(color: Colors.deepPurple,),
              Container(color: Colors.orange,),
            ]),
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
              padding: EdgeInsets.only(left: 10.0,right: 5.0,top:25,bottom: 25),
              width: 150,
              child: ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(38.0)),
                child: Image(
                  image: AssetImage('assets/RCC.jpg'),
                  fit: BoxFit.cover,
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
              padding: EdgeInsets.only(left: 5.0,right: 5.0,top:25,bottom: 25),
              width: 150,
              child: ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(38.0)),
                child: Image(
                  image: AssetImage('assets/RN.jpg'),
                  fit: BoxFit.cover,
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
              padding: EdgeInsets.only(left: 5.0,right: 5.0,top: 25,bottom:25),
              width: 150,
              child: ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(38.0)),
                child: Image(
                  image: AssetImage('assets/RCO.jpg'),
                  fit: BoxFit.cover,
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
              padding: EdgeInsets.only(left: 5.0,right: 5.0,top: 25,bottom: 25),
              width: 150,
              child: ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(38.0)),
                child: Image(
                  image: AssetImage('assets/RO.jpg'),
                  fit: BoxFit.cover,
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
              padding: EdgeInsets.only(left: 5.0,right: 10.0,top: 25,bottom: 25),
              width: 150,
              child: ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(38.0)),
                child: Image(
                  image: AssetImage('assets/RS.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}