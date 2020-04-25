import 'package:flutter/material.dart';
import 'package:flutter/services.Dart' show rootBundle;

class chord extends StatefulWidget{
  chord({Key key, this.musicTitle}) : super(key: key);
  final String musicTitle;

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _chord();
  }
}

class _chord extends State<chord>{
String a = "reak acrtText widget, see the documentation for TextStyle.\n";







  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    var val;
    checkValue() async {
      val = getFileData('lib/Contenidos/Letras y Acordes/Canciones/Oreja de vango.txt');
    }



    return Scaffold(
      appBar: AppBar(
        title: Text(widget.musicTitle),
      ),
      body: Padding(
        padding: EdgeInsets.all(5.0),
        child: RichText(
          text: TextSpan(
            text: "\n",
            style: TextStyle(
              color: Colors.black,
              decoration: TextDecoration.underline,
              decorationColor: Colors.red,
              decorationStyle: TextDecorationStyle.wavy,
              fontSize: 20,
            ),
            children: <TextSpan>[
              TextSpan(text: "Intro:\n"),
              TextSpan(text: ' world!\n'),
              TextSpan(text: "$val \n",),
              TextSpan(text: ' world!\n'),
              TextSpan(text: a,),
              TextSpan(text: ' world!\n'),
              TextSpan(text: a,),
              TextSpan(text: ' world!\n'),
              TextSpan(text: a,),
              TextSpan(text: ' world!\n'),
              TextSpan(text: a,),
              TextSpan(text: ' world!\n'),
              TextSpan(text: a,),
              TextSpan(text: ' world!\n'),

            ],
          ),
        ),
      )
    );
  }
}

Future<String> getFile(String path) async {
  return await rootBundle.loadString(path);

}
Future<String> getFileData(String path) async {

  String data = await getFile(path);
  return data;
}