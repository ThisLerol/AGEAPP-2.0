import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ageapp/social_media_icons.dart';
import 'package:url_launcher/url_launcher.dart';
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
          Decripcion(numero, context),
          SliverFixedExtentList(
            itemExtent: 220,
            delegate: SliverChildListDelegate([
              _descripcion(numeroderegion: numero,),
            ],
            ),
          ),
          Cuerpo(numero, context),



        ],
      ),
    );
  }

  SliverAppBar FotoRegion(int numero){
    int num = numero;
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

  SliverFixedExtentList Cuerpo(int numero, BuildContext context){
    int num = numero;
    String titulo;
    String imagen;
    String descripcion;
    String instagram;
    String facebook;

    switch(num) {
      case 1: {
        titulo = " Región Costa Centro";
        imagen = 'assets/costacentro2.jpg';
        instagram = 'https://www.instagram.com/costa.centro/?hl=es-la';
        facebook = 'https://www.facebook.com/regioncostacentro.ageup';
      }
      break;

      case 2: {
        titulo = "Región Norte";
        imagen = 'assets/norte2.jpg';
        instagram = 'https://www.instagram.com/regionnorte.ageup/?hl=es-la';
        facebook = 'https://www.facebook.com/ageup.solido.norte';
      }
      break;

      case 3: {
        titulo = "Región Centro Oriente";
        imagen = 'assets/centrooriente2.jpg';
        instagram = '';
        facebook = 'https://www.facebook.com/Region-Centro-Oriente-AGEUP-2295426874045005';
      }
      break;

      case 4: {
        titulo = "Región Oriente";
        imagen = 'assets/oriente2.jpg';
        instagram = '';
        facebook = 'https://www.facebook.com/profile.php?id=100009909468823';
      }
      break;

      case 5: {
        titulo = "Región Sur";
        imagen = 'assets/sur2.jpg';
        instagram = 'https://www.instagram.com/regionsur/?hl=es-la';
        facebook = 'https://www.facebook.com/Region-Sur-AGEUP-1694473440831476';
      }
      break;
    }
    return SliverFixedExtentList(
      itemExtent: 200,
      delegate: SliverChildListDelegate([
        Container(
          child: Row(
            children: <Widget>[
              Container(
                width: MediaQuery.of(context).size.width/2,
                //color: Colors.grey[300],
                 child: Column(
                   children: <Widget>[
                     Container(
                       //color: Colors.orange,
                       child: Column(
                         children: <Widget>[
                           InkWell(
                             onTap: () => launch(facebook),
                             child: Container(
                                 padding: EdgeInsets.only(top:15.0,bottom: 5.0,left: 10.0),
                                 child: Row(
                                   children: <Widget>[
                                     Icon(SocialMedia.facebook_squared,size: 30,color: Colors.indigo),
                                     Text("facebook")
                                   ],
                                 )
                             ),
                           ),
                           InkWell(
                             onTap: () => launch(instagram),
                             child: Container(
                               padding: EdgeInsets.only(top:5.0,bottom: 5.0,left: 10.0),
                               child: Row(
                                 children: <Widget>[
                                   Icon(SocialMedia.instagram,size: 30, color: Colors.pink,),
                                   Text("instagram")
                                 ],
                               ),
                             ),
                           ),
                         ],
                       ),
                     ),
                   ],
                 )
              ),
              Container(
                width:MediaQuery.of(context).size.width/2,
                child: Align(
                  alignment: Alignment.topCenter,
                  child: Container(padding: EdgeInsets.only(top: 15.0),
                         width: 120,
                          child: ClipOval(
                             child: Image(
                              image: AssetImage(imagen),
                              ),
                          ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ]),
    );
  }

  SliverFixedExtentList Decripcion(int nuemro, BuildContext context){
    int num = numero;
    String titulo;
    String descripcion;

    switch(num) {
      case 1: {
        titulo = "Región Costa Centro";
        descripcion ="La Region Costa Centro no se encarga solo de comunicarse con las diferentes CBU's de Lima e Ica. La RCC tambien busca que se creen lazos entre los ageupinos, busca que podamos aprender y concer más acerca de nuestra fe. Lo que la caracteriza es que a pesar de la distancia, diversas bases pueden disfrutar juntas en espacios como un viernes universitario.";
      }
      break;

      case 2: {
        titulo = "Región Norte";
        descripcion ="La región norte una de las regiones más calurosas, por su amabilidad y por la locura que los caracteriza, siendo por ello llamados: EL GRAN SÓLIDO NORTE, conformado por las regiones de Ancash, La libertad, Lambayeque, Piura, Cajamarca y Amazonas (chachapoyas), que conforman la sólida familia del norte, se dice que los efores en esta región son de nunca olvidar, estas regiones conformado por hermosos paisajes desde montañas hasta playas, el amor y calor de su gente caracteriza el Sólido Norte.";
      }
      break;

      case 3: {
        titulo = "Región Centro Oriente";
        descripcion ="Centro Oriente esta compuesto por grupos estudiantiles en las regiones de: Huancayo, Huánuco, Ayacucho, Cerro de Pasco, Tingo María, Pucallpa, Oxapampa y Huancavelica. Tierras diversas con alrededor de 9 universidades que cuentan con Comunidades Biblicas Universitarias actualmente activas. Cada CBU es hogar, amor, pasión, lucha y fuerza en diversidad unida.";
      }
      break;

      case 4: {
        titulo = "Región Oriente";
        descripcion ="Somos jóvenes que vivimos en las zonas más calurosa de nuestro país, ya que nuestra región comprende los departamentos de Loreto y San Martín. Por eso nos encanta reír y danzar el shalalala todo el tiempo. Nos encanta extender el reino en las universidades y colegios de nuestra Amazonia, mediante actividades de evangelismo reuniendonos en las plazas e iglesias, como también haciendo  voluntariados en favor de los niños de las riberas de los ríos de nuestra región";
      }
      break;

      case 5: {
        titulo="Región Sur";
        descripcion ="Privilegiada región Sur; donde los militantes de la CBU-UNJBG, CBU-UJCM, CBU-UNSA, CBU-UCSP, CBU-UCSM, CBU-UNSAAC y CBU-UNA disfrutan las playas de Tacna e Ilo, el sol radiante en Moquegua y sus paltas, el gran volcán Misti y la ciudad blanca de Arequipa, la maravilla del Machupicchu en el Cusco y por último disfrutan de los peces del Titicaca en Puno.";
      }
      break;
    }
    return SliverFixedExtentList(
      itemExtent: 50.0,
      delegate: SliverChildListDelegate([
                  Align(
                        alignment: Alignment.topLeft,
                        child: Container(
                          //color: Colors.orange,
                          width: MediaQuery.of(context).size.width,
                          height: 50,
                          child: Align(
                            alignment: Alignment.topCenter,
                            child: Container(padding: EdgeInsets.only(top: 10.0),
                              child: Text(titulo,
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: 25.0,
                                    shadows: [
                                      Shadow(
                                        color: Colors.deepOrangeAccent,
                                        offset: Offset(3,3),
                                        blurRadius: 6,
                                      ),
                                    ]),
                              ),
                            ),
                          ),
                        ),
                      ),
      ]),
    );
  }
}

class _descripcion extends StatelessWidget{
  final int numeroderegion;
  const _descripcion({Key key, this.numeroderegion}): super(key:key);

  Text descrip(int pos){
    int num = pos;
    String descripcion;
    switch(num) {
      case 1: {
        descripcion ="La Region Costa Centro no se encarga solo de comunicarse con las diferentes CBU's de Lima e Ica. La RCC tambien busca que se creen lazos entre los ageupinos, busca que podamos aprender y concer más acerca de nuestra fe. Lo que la caracteriza es que a pesar de la distancia, diversas bases pueden disfrutar juntas en espacios como un viernes universitario.";
      }
      break;

      case 2: {
        descripcion ="La región norte una de las regiones más calurosas, por su amabilidad y por la locura que los caracteriza, siendo por ello llamados: EL GRAN SÓLIDO NORTE, conformado por las regiones de Ancash, La libertad, Lambayeque, Piura, Cajamarca y Amazonas (chachapoyas), que conforman la sólida familia del norte, se dice que los efores en esta región son de nunca olvidar, estas regiones conformado por hermosos paisajes desde montañas hasta playas, el amor y calor de su gente caracteriza el Sólido Norte.";
      }
      break;

      case 3: {
        descripcion ="Centro Oriente esta compuesto por grupos estudiantiles en las regiones de: Huancayo, Huánuco, Ayacucho, Cerro de Pasco, Tingo María, Pucallpa, Oxapampa y Huancavelica. Tierras diversas con alrededor de 9 universidades que cuentan con Comunidades Biblicas Universitarias actualmente activas. Cada CBU es hogar, amor, pasión, lucha y fuerza en diversidad unida.";
      }
      break;

      case 4: {
        descripcion ="Somos jóvenes que vivimos en las zonas más calurosa de nuestro país, ya que nuestra región comprende los departamentos de Loreto y San Martín. Por eso nos encanta reír y danzar el shalalala todo el tiempo. Nos encanta extender el reino en las universidades y colegios de nuestra Amazonia, mediante actividades de evangelismo reuniendonos en las plazas e iglesias, como también haciendo  voluntariados en favor de los niños de las riberas de los ríos de nuestra región";
      }
      break;

      case 5: {
        descripcion ="Privilegiada región Sur; donde los militantes de la CBU-UNJBG, CBU-UJCM, CBU-UNSA, CBU-UCSP, CBU-UCSM, CBU-UNSAAC y CBU-UNA disfrutan las playas de Tacna e Ilo, el sol radiante en Moquegua y sus paltas, el gran volcán Misti y la ciudad blanca de Arequipa, la maravilla del Machupicchu en el Cusco y por último disfrutan de los peces del Titicaca en Puno.";
      }
      break;
    }
    return Text(descripcion,
        textAlign: TextAlign.justify,
        style: TextStyle(fontSize: 16.0),);
  }

  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 10.0,right: 10.0),
      child: ListView(
        scrollDirection: Axis.vertical,
        children: <Widget>[
         descrip(numeroderegion),
        ],
      ),
    );
  }
}
