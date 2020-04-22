import 'package:ageapp/Contenidos/Home.dart';
import 'package:flutter/material.dart';
import 'package:ageapp/barMenu.dart';
import 'dart:async';

void main(){
  runApp(new MaterialApp(
    home: SplashScrean(),

  ));
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
              decoration: BoxDecoration(color: Colors.redAccent),
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
                        CircleAvatar(
                          backgroundColor: Color.fromRGBO(12, 12, 12, 2),
                          radius: 2,
                          child: Icon(
                            Icons.add,
                            color: Color.fromRGBO(39, 34, 34, 1),
                            size: 50.0,

                          ),

                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 10.0),

                        ),
                        Text("FlutterAdd",style: TextStyle(color: Colors.white,fontSize: 24.0,fontWeight: FontWeight.bold),)
                      ],
                    ),

                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[

                      CircularProgressIndicator(),
                      Padding(padding: EdgeInsets.only(top: 20.0),),
                      Text("Nose que poner aqui",style: TextStyle(color: Colors.white,fontSize: 18.0,fontWeight: FontWeight.bold),)
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
      title: 'Ageapp',
      theme: new ThemeData(
        primarySwatch: Colors.red,
      ),
      debugShowCheckedModeBanner: false,
      home: AllBar(),
    );
  }
}
