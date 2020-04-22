import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: ListView(
        children: <Widget>[
        Container(
          padding: EdgeInsets.only(bottom: 15.0),
          child: new Image(
          image: AssetImage('assets/fondo.jpg'),
        ),
        ),
         Container(
           padding: EdgeInsets.only(left:10.0),
          child:
            Text(
           "¿Qué es Ageup?",
            style: TextStyle(
              fontSize: 25.0,
              fontStyle: FontStyle.italic,
            ),
          )
         ),
          Container(
              padding: EdgeInsets.only(left:10.0, right: 10.0, top: 10.0, bottom: 10.0),
              child:
              Text(
                "La Asociación de Grupos Evangélicos Universitarios del Perú concentra a todos los grupos de testimonio evangélico que concuerdan con los principios esenciales de la asociación: la misión integral, el Reino de Dios, las CBU´s como un modelo de misión, etc. De esta manera, AGEUP viene trabajando 57 años en los centros de educación superior, contribuyendo de esta manera a la extensión del Reino de Dios en las universidades, así como en la formación de liderazgo cuya presencia en el espacio eclesial evangélico y social es significativo. Así mismo, AGEUP ha contribuido al devenir del proceso histórico del país, contribuyendo en los momentos críticos que el país tuvo que atravesar.",
                style: TextStyle(
                  fontSize: 15.0,
                  fontStyle: FontStyle.italic,
                ),
                textAlign: TextAlign.justify,
              )
          ),
          Container(
              padding: EdgeInsets.only(left:10.0),
              child:
              Text(
                "¿Qué es CBU?",
                style: TextStyle(
                  fontSize: 25.0,
                  fontStyle: FontStyle.italic,
                ),
              )
          ),
          Container(
              padding: EdgeInsets.only(left:10.0, right: 10.0, top: 10.0, bottom: 10.0),
              child:
              Text(
                "La Comunidad Bíblica Universitaria está conformada por estudiantes universitarios evangélicos cuya misión es compartir el evangelio de Jesucristo en palabras y actos, es decir compartiendo las buenas noticias del Reino con todos los estamentos de la universidad, de manera que puedan satisfacer las necesidades fundamentales de las personas, en todas sus dimensiones, física, afectiva, psicológica, espiritual, intelectual, etc. En este sentido, la CBU, no es una iglesia, al contrario, es una extensión de la misma, o como se la llama tradicionalmente, “somos el brazo misionero de la iglesia”. Por tal razón, la iglesia local y la CBU trabajan cooperativamente. Por ello también cada miembro de la CBU forma parte de una iglesia local.",
                style: TextStyle(
                  fontSize: 15.0,
                  fontStyle: FontStyle.italic,
                ),
                textAlign: TextAlign.justify,
              )
          ),
        ]
      )
    );
  }
}