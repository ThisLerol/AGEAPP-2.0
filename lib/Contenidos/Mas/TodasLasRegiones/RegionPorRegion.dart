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
          SliverFixedExtentList(
            itemExtent:MediaQuery.of(context).size.width/2,
            delegate: SliverChildListDelegate([
              Container(
                child: _Obreros(numeroderegion: numero),
          ),],),),
      ],),);
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
    String nomFacebook;
    String nomInstagram;

    switch(num) {
      case 1: {
        titulo = " Región Costa Centro";
        imagen = 'assets/costacentro2.jpg';
        instagram = 'https://www.instagram.com/costa.centro/?hl=es-la';
        facebook = 'https://www.facebook.com/regioncostacentro.ageup';
        nomFacebook= "Region Costa Centro Ageup";
        nomInstagram= "costa.centro";
      }
      break;

      case 2: {
        titulo = "Región Norte";
        imagen = 'assets/norte2.jpg';
        instagram = 'https://www.instagram.com/regionnorte.ageup/?hl=es-la';
        facebook = 'https://www.facebook.com/ageup.solido.norte';
        nomFacebook= "AGEUP Región NORTE";
        nomInstagram= "regionnorte.ageup";
      }
      break;

      case 3: {
        titulo = "Región Centro Oriente";
        imagen = 'assets/centrooriente2.jpg';
        instagram = 'Region Centro Oriente-AGEUP';
        facebook = 'https://www.facebook.com/Region-Centro-Oriente-AGEUP-2295426874045005';
        nomFacebook= "Region Centro Oriente-AGEUP";
        nomInstagram= "regioncentrooriente";
      }
      break;

      case 4: {
        titulo = "Región Oriente";
        imagen = 'assets/oriente2.jpg';
        instagram = 'Región Oriente Ageup';
        facebook = 'https://www.facebook.com/profile.php?id=100009909468823';
        nomFacebook= "Region Oriente AGEUP";
        nomInstagram= "";
      }
      break;

      case 5: {
        titulo = "Región Sur";
        imagen = 'assets/sur2.jpg';
        instagram = 'https://www.instagram.com/regionsur/?hl=es-la';
        facebook = 'https://www.facebook.com/Region-Sur-AGEUP-1694473440831476';
        nomFacebook= "Region Sur AGEUP";
        nomInstagram= "regionsur";
      }
      break;
    }
    return SliverFixedExtentList(
      itemExtent: 70,
      delegate: SliverChildListDelegate([
        Container(
          child: Row(
            children: <Widget>[
              InkWell(
                onTap: () => launch(facebook),
                child: Container(
                    width: MediaQuery.of(context).size.width/2,
                    padding: EdgeInsets.only(top:15.0,bottom: 5.0,left: 10.0),
                    child: Row(
                      children: <Widget>[
                        Icon(SocialMedia.facebook_squared,size: 30,color: Colors.indigo),
                        Container(
                            padding: EdgeInsets.only(left: 10.0),
                            width: MediaQuery.of(context).size.width/3,
                            child: Text(nomFacebook, maxLines: 1,style: TextStyle(fontSize: 13),))
                                   ],
                                 )
                             ),
                           ),
              InkWell(
                onTap: () => launch(instagram),
                child: Container(

                  width: MediaQuery.of(context).size.width/2,
                  padding: EdgeInsets.only(top:15.0,bottom: 5.0,left: 10.0),
                  child: Row(
                    children: <Widget>[
                      Icon(SocialMedia.instagram,size: 30, color: Colors.pink,),
                      Container(
                          padding: EdgeInsets.only(left: 10.0),
                          width: MediaQuery.of(context).size.width/3,
                          child: Text(nomInstagram, maxLines: 1,style: TextStyle(fontSize: 13.0),))
                                 ],
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

class _Obreros extends StatelessWidget{
  final int numeroderegion;
  const _Obreros({Key key, this.numeroderegion}): super(key:key);
  Widget build (BuildContext context){
    return ListView(
      scrollDirection: Axis.horizontal,
      children: CantidadObreros(numeroderegion, Contacta(context)),
    );
  }

  Container Contacta(BuildContext context){

    return Container(
      padding: EdgeInsets.all(10.0),
      child: Column(
        children: <Widget>[
          SizedBox(height: 10,),
          SizedBox(
            height: 140,
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.red[200],
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10.0),
                      topRight: Radius.circular(10.0),
                      bottomLeft: Radius.circular(10.0),
                      bottomRight: Radius.circular(10.0)
                  )
              ),
              width: MediaQuery.of(context).size.width/8,
              child: Align(
                alignment: Alignment.center,
                child: FittedBox(
                  fit: BoxFit.fill,
                    child: Text("C\no\nn\nt\na\nc\nt\no\ns", style: TextStyle(fontSize: 12.0),textAlign: TextAlign.center ,)),
              ),
            ),
          ),
          SizedBox(height: 10,),
        ],
      ),
    );
  }

  List<Widget> CantidadObreros(int num, Container Contacta){
    int num2;
    var arr = new List<Widget>();
    arr.add(Contacta);
    switch(num) {
      case 1: {
        num2 =2;
        arr.add(_ObreroRegion(
          foto: 'assets/fotojhoss.jpg',
          Nombre: "Jhosselyn Rejas",
          facebook: 'https://www.facebook.com/jhosselyn.rejascurasi',
          instagram: 'https://www.instagram.com/jhoss.rejascurasi/?hl=es-la',));
        arr.add(_ObreroRegion(
          foto: 'assets/fotorocio.jpg',
          Nombre: "Rocío Salón",
          facebook: 'https://www.facebook.com/rocio.salonhuaman',
          instagram: '',));
      }
      break;
      case 2: {
        num2 = 3;
        arr.add(_ObreroRegion(
          foto: 'assets/fotokaren.jpg',
          Nombre: "Karen Moreno",
          facebook: 'https://www.facebook.com/lokilinda.moreno',
          instagram: 'https://www.instagram.com/losviajesdekalinda/?hl=es-la',));
        arr.add(_ObreroRegion(
          foto: 'assets/fotoalbert.jpg',
          Nombre: "Albert Den",
          facebook: 'https://www.facebook.com/albert.denoudsten',
          instagram: 'https://www.instagram.com/albertdenoudsten/?hl=es-la',));
        arr.add(_ObreroRegion(
          foto: 'assets/fotokevin.jpg',
          Nombre: "Kevin Salazar",
          facebook: 'https://www.facebook.com/kevinharolds',
          instagram: 'https://www.instagram.com/kevinse.15/?hl=es-la',));
      }
      break;
      case 3: {
        num2 = 2;
        arr.add(_ObreroRegion(
          foto: 'assets/fotoaracely.jpg',
          Nombre: "Arcely Ñavincapa",
          facebook: 'https://www.facebook.com/altardelcielo777',
          instagram: 'https://www.instagram.com/altardelcielo7777/?hl=es-la',));
        arr.add(_ObreroRegion(
          foto: 'assets/fotoyelina.jpg',
          Nombre: "Yelina Oscanoa",
          facebook: 'https://www.facebook.com/yelina.oscanoatinoco',
          instagram: 'https://www.instagram.com/yelytinoco/?hl=es-la',));
      }
      break;
      case 4: {
        num2 = 1;
        arr.add(_ObreroRegion(
          foto: 'assets/fotorobin.jpg',
          Nombre: "Robin Rodriguez",
          facebook: 'https://www.facebook.com/robindavid.rodriguezpariona',
          instagram: 'https://www.instagram.com/robinageup/?hl=es-la',));
      }
      break;
      case 5: {
        num2 = 2;
        arr.add(_ObreroRegion(
          foto: 'assets/fotocarolina.jpg',
          Nombre: "Carolina Lovatón",
          facebook: 'https://www.facebook.com/carolina.lovaton.3',
          instagram: '',));
      }
      break;
    }

    return arr;
  }
}

class _ObreroRegion extends StatelessWidget{
final String foto;
final String Nombre;
final String facebook;
final String instagram;
const _ObreroRegion({Key key, this.foto, this.Nombre, this.instagram,this.facebook}): super(key:key);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width/3,
      height: MediaQuery.of(context).size.width/(2),
      child: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(8),
            child: ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(20.0)),
                child: Image(image: AssetImage(foto) )),
          ),
          Container(
            width:MediaQuery.of(context).size.width/3.5,
            height: 15,
            //color: Colors.blueGrey,
            child: FittedBox(
              fit: BoxFit.contain,
                child: Text(this.Nombre,),
            ),
          ),
          Container(
            //color: Colors.redAccent,
            child: Row(
              children: <Widget>[
                Container(//color: Colors.deepOrangeAccent,
                    child: SizedBox(width: MediaQuery.of(context).size.width/15 ,
                    height: 20,)),
                InkWell(
                  onTap: () => launch(facebook),
                  child: Container(
                    padding: EdgeInsets.only(left: 0,right: 0.0,top: 5.0),
                      child: Icon(SocialMedia.facebook_squared,size: MediaQuery.of(context).size.width/15,color: Colors.indigo),
                  ),
                ),
                Container(//color: Colors.deepOrangeAccent,
                    child: SizedBox(width: MediaQuery.of(context).size.width/15 ,
                      height: 20,)),
                InkWell(
                  onTap: () => launch(instagram),
                  child: Container(
                    padding: EdgeInsets.only(top: 5.0),
                    child: Icon(SocialMedia.instagram,size: MediaQuery.of(context).size.width/15, color: Colors.pink,),
                  ),
                ),
                Container(//color: Colors.deepOrangeAccent,
                    child: SizedBox(width: MediaQuery.of(context).size.width/15 ,
                      height: 20,)),
              ],
            ),
          ),
        ],
      ),
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
        descripcion ="La Región Costa Centro no se encarga solo de comunicarse con las diferentes CBU's de Lima e Ica. La RCC tambien busca que se creen lazos entre los ageupinos, busca que podamos aprender y concer más acerca de nuestra fe. Lo que la caracteriza es que a pesar de la distancia, diversas bases pueden disfrutar juntas en espacios como un viernes universitario.";
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
