import 'package:flutter/material.dart';
import 'package:ageapp/barMenu.dart';
import 'dart:async';
import 'package:ageapp/Contenidos/Books/data_book.dart';
import 'package:ageapp/Contenidos/Books/detail_book.dart';
import 'package:ageapp/Contenidos/Materials/data_material.dart';
import 'package:ageapp/Contenidos/Materials/detail_material.dart';



void main(){
  runApp(new MaterialApp(
    home: SplashScrean(),
    
  ),
  
  );
  
}

class SplashScrean extends StatefulWidget{
  @override
  _SplashScrean createState() => _SplashScrean();

}



class _SplashScrean extends State<SplashScrean>{

  Future<bool> _CheckSplash() async{
    await Future.delayed(Duration(seconds: 3), () {});
    return true;
  }

  void _NavegarPorMenu(){
    Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (BuildContext context) => pp())
      );
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _CheckSplash().then(
      (status) {
        if (status) {_NavegarPorMenu();} else {
          pp();
        }
      }
    );
  }
  @override
  Widget build(BuildContext context){
    return Scaffold(
        body: Stack(
          fit: StackFit.expand,
          children: <Widget>[
            Container(
              decoration: BoxDecoration(color: Colors.white),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Expanded(
                  flex: 2,
                  child: Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Container(
                          width: 200,
                          height: 200,
                          child: CircleAvatar(
                            backgroundImage: AssetImage('assets/AGEUP.jpg'),
                            backgroundColor: Colors.white,
                            radius: 0,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 10.0 ),

                        ),
                        Text("Conectando con estudiantes",style: TextStyle(color: Colors.black,fontSize: 20.0,fontWeight: FontWeight.bold),)
                      ],
                    ),

                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      CircularProgressIndicator(valueColor: new AlwaysStoppedAnimation<Color>(Colors.red),),
                      Padding(padding: EdgeInsets.only(top: 20.0),),
                      Text("AgeApp AGEUPpaq",style: TextStyle(color: Colors.redAccent,fontSize: 17.0,fontWeight: FontWeight.bold),)
                    ],
                  ),
                )
              ],
            )
          ],
        )
    );
  }
}

//Principal
class pp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'AGEAPP',
      theme: new ThemeData(
        primarySwatch: Colors.red,
        platform: TargetPlatform.android
      ),
      debugShowCheckedModeBanner: false,
      home:AllBar(),
      onGenerateRoute: (settings) => RouteBook.generarRutas(settings,documents,books),
    );  
  }
   
}

class  RouteBook {
  
  static Route<dynamic> generarRutas(RouteSettings settings, List<Documents> documentos, List<Book> books){
    final path = settings.name.split('/');
    final title = path[1];

    MaterialPageRoute pageroute;
    documentos.forEach((doc) => {
      
      if(doc.title == title){
        pageroute = MaterialPageRoute(
          settings: settings,
          builder: (context) => DetailDocuments(doc)
        )
      }
    });
    books.forEach((book)=>{
      if (book.title == title) {
        pageroute = MaterialPageRoute(
          settings: settings,
          builder: (context) => Detail(book),
        )
      }
    });
    return pageroute;

  }
}
  

