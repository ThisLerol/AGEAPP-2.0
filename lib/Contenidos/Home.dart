import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  BoxDecoration MiCaja(){
    return BoxDecoration(
      color: Colors.greenAccent,
      borderRadius: BorderRadius.all(Radius.circular(20.0)),
    );
  }
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: ListView(
        scrollDirection: Axis.vertical,
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(bottom: 15.0),
            child:
            new Image(
              image: AssetImage('assets/foto3.jpg'),
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              child: FittedBox(
                child: Material(
                  color: Color(0xFFEEEEEE),
                  elevation: 5.0,
                  borderRadius: BorderRadius.circular(18.0),
                  shadowColor: Color(0XFF9E9E9E),
                 child: InkWell(
                   onTap: () {
                     return showDialog<void>(
                       context: context,
                       barrierDismissible: false, // user must tap button!
                       builder: (BuildContext context) {
                         return AlertDialog(
                           title:Text(
                             "¿Qué es Ageup?",
                             style: TextStyle(
                               fontSize: 30.0,
                               fontStyle: FontStyle.italic,
                             ),
                             textAlign: TextAlign.center,
                           ),
                           content: SingleChildScrollView(
                             child: ListBody(
                               children: <Widget>[
                                 Text("La Asociación de Grupos Evangélicos Universitarios del Perú concentra a todos los grupos de testimonio evangélico que concuerdan con los principios esenciales de la asociación: la misión integral, el Reino de Dios, las CBU´s como un modelo de misión, etc. De esta manera, AGEUP viene trabajando 57 años en los centros de educación superior, contribuyendo de esta manera a la extensión del Reino de Dios en las universidades, así como en la formación de liderazgo cuya presencia en el espacio eclesial evangélico y social es significativo. Así mismo, AGEUP ha contribuido al devenir del proceso histórico del país, contribuyendo en los momentos críticos que el país tuvo que atravesar.",
                                   style: TextStyle(
                                     fontSize: 15.0,
                                     fontStyle: FontStyle.italic,
                                   ),
                                   textAlign: TextAlign.justify,
                                 ),
                               ],
                             ),
                           ),
                           actions: <Widget>[
                             FlatButton(
                               child: Icon(Icons.arrow_left, size: 50.0,color: Colors.redAccent,),
                               onPressed: () {
                                 Navigator.of(context).pop();
                               },
                             ),
                           ],
                         );
                       },
                     );
                   },
                   child:
                     Row(
                      children: <Widget>[
                        Container(
                          width: 300,
                          height: 180,
                          padding: EdgeInsets.only(left:10.0),
                          child:Center(
                              child: Text(
                                "¿Qué es Ageup?",
                                style: TextStyle(
                                  fontSize: 35.0,
                                  fontStyle: FontStyle.italic,
                                ),
                                textAlign: TextAlign.center,
                              ),
                          ),
                        ),
                        Container(
                          width: 220,
                          height: 180,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(18.0),
                            child: Image(
                              fit: BoxFit.fill,
                              alignment: Alignment.topRight,
                              image: AssetImage('assets/AGEUP.jpg'),
                            ),
                          ),
                        ),
                      ],
                ),
                 ),
              ),
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              child: FittedBox(
                child: Material(
                  color: Color(0xFFEEEEEE),
                  elevation: 5.0,
                  borderRadius: BorderRadius.circular(18.0),
                  shadowColor: Color(0XFF9E9E9E),
                  child: InkWell(
                    onTap: () {
                      return showDialog<void>(
                        context: context,
                        barrierDismissible: false, // user must tap button!
                        builder: (BuildContext context) {
                          return AlertDialog(
                            title: Text(
                              "¿Qué es CBU?",
                              style: TextStyle(
                                fontSize: 30.0,
                                fontStyle: FontStyle.italic,
                              ),
                              textAlign: TextAlign.justify,
                            ),
                            content: SingleChildScrollView(
                              child: ListBody(
                                children: <Widget>[
                                  Text(
                                    "La Comunidad Bíblica Universitaria está conformada por estudiantes universitarios evangélicos cuya misión es compartir el evangelio de Jesucristo en palabras y actos, es decir compartiendo las buenas noticias del Reino con todos los estamentos de la universidad, de manera que puedan satisfacer las necesidades fundamentales de las personas, en todas sus dimensiones, física, afectiva, psicológica, espiritual, intelectual, etc. En este sentido, la CBU, no es una iglesia, al contrario, es una extensión de la misma, o como se la llama tradicionalmente, “somos el brazo misionero de la iglesia”. Por tal razón, la iglesia local y la CBU trabajan cooperativamente. Por ello también cada miembro de la CBU forma parte de una iglesia local.",
                                    style: TextStyle(
                                      fontSize: 15.0,
                                      fontStyle: FontStyle.italic,
                                    ),
                                    textAlign: TextAlign.justify,
                                  ),
                                ],
                              ),
                            ),
                            actions: <Widget>[
                              FlatButton(
                                child: Icon(Icons.arrow_left, size: 50.0,color: Colors.redAccent,),
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                              ),
                            ],
                          );
                        },
                      );
                    },
                    child:
                      Row(
                        children: <Widget>[
                          Container(
                            width: 300,
                            height: 180,
                            padding: EdgeInsets.only(left:10.0),
                            child:Center(
                                child: Text(
                                  "¿Qué es CBU?",
                                  style: TextStyle(
                                    fontSize: 35.0,
                                    fontStyle: FontStyle.italic,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                            ),
                          ),
                          Container(
                            width: 220,
                            height: 180,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(18.0),
                              child: Image(
                                fit: BoxFit.fill,
                                alignment: Alignment.topRight,
                                image: AssetImage('assets/foto2.jpg'),
                              ),
                            ),
                          ),
                        ],
                      ),
                  ),
                ),
              ),
            ),
          ),
        ]
      )
    );
  }
}