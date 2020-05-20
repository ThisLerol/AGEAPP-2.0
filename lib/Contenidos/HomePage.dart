import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _scafoldKey = new GlobalKey<ScaffoldState>();

  AssetImage aspa = AssetImage("assets/images/cross.png");
  AssetImage circulo = AssetImage("assets/images/circle.png");
  AssetImage edit = AssetImage("assets/images/edit.png");

  int aspaWin = 0;
  int circuloWin = 0;
  int draw = 0;

  List<String> gameState;

  bool isAspa = true;
  bool gameEnd = false;

  @override
  void initState() {
    super.initState();
    setState(() {
      gameState = [
        "empty",
        "empty",
        "empty",
        "empty",
        "empty",
        "empty",
        "empty",
        "empty",
        "empty",
      ];
    });
  }

  AssetImage getImage(String value) {
    switch (value) {
      case ('empty'):
        return edit;
        break;
      case ('aspa'):
        return aspa;
        break;
      case ('circulo'):
        return circulo;
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scafoldKey,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Expanded(
            child: GridView.builder(
              padding: EdgeInsets.all(20.0),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  childAspectRatio: 1.0,
                  crossAxisSpacing: 5.0,
                  mainAxisSpacing: 5.0),
              itemCount: gameState.length,
              itemBuilder: (context, i) => SizedBox(
                    width: 100.0,
                    height: 100.0,
                    child: MaterialButton(
                      onPressed: () => playGame(i),
                      child: Image(
                        image: getImage(gameState[i]),
                      ),
                    ),
                  ),
            ),
          ),
          SizedBox(
            height: 100.0,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 30.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      Container(
                        width: 25,
                        height: 25,
                        child:Image(
                        image: AssetImage("assets/images/cross.png"))),
                      SizedBox(height: 10.0),
                      Text(
                        '${aspaWin}',
                        style: TextStyle(
                            fontSize: 32.0, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      Container(
                        width: 25,
                        height: 25,
                        child:Image(
                        image: AssetImage("assets/images/circle.png"))),
                      SizedBox(height: 10.0),
                      Text(
                        '${circuloWin}',
                        style: TextStyle(
                            fontSize: 32.0, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      Text(
                        'Empate',
                        style: TextStyle(
                            fontSize: 20.0,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 10.0),
                      Text(
                        '${draw}',
                        style: TextStyle(
                            fontSize: 32.0, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                MaterialButton(
                  color: Colors.blue,
                  minWidth: 50.0,
                  height: 50.0,
                  shape: ContinuousRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0)),
                  child: Text(
                    'Revancha',
                    style: TextStyle(color: Colors.white, fontSize: 15.0),
                  ),
                  onPressed: () => resetGame(),
                ),
                MaterialButton(
                  color: Colors.green,
                  minWidth: 50.0,
                  height: 50.0,
                  shape: ContinuousRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0)),
                  child: Text(
                    'Nueva partida',
                    style: TextStyle(color: Colors.white, fontSize: 15.0),
                  ),
                  onPressed: () => newGame(),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  playGame(int index) {
    if (gameState[index] == "empty") {
      setState(() {
        if (isAspa) {
          gameState[index] = "aspa";
        } else {
          gameState[index] = "circulo";
        }
        isAspa = !isAspa;
        checkWin();
      });
    }
  }

  checkWin() {

    if (!gameEnd) {
      
      if ((gameState[0]) != 'empty' && 
      (gameState[0] == gameState[1]) &&
      (gameState[1] == gameState[2])) {
        setState(() {
          showWiner(gameState[0]);
          markPoints(gameState[0]);
          gameEnd = true;
        });
      } else if ((gameState[3]) != 'empty' && 
      (gameState[3] == gameState[4]) &&
      (gameState[4] == gameState[5])) {
        setState(() {
          showWiner(gameState[3]);
          markPoints(gameState[3]);
          gameEnd = true;
        });
      } else if ((gameState[6]) != 'empty' && 
      (gameState[6] == gameState[7]) &&
      (gameState[7] == gameState[8])) {
        setState(() {
          showWiner(gameState[6]);
          markPoints(gameState[6]);
          gameEnd = true;
        });
      } else if ((gameState[0]) != 'empty' && 
      (gameState[0] == gameState[3]) &&
      (gameState[3] == gameState[6])) {
        setState(() {
          showWiner(gameState[0]);
          markPoints(gameState[0]);
          gameEnd = true;
        });
      } else if ((gameState[1]) != 'empty' && 
      (gameState[1] == gameState[4]) &&
      (gameState[4] == gameState[7])) {
        setState(() {
          showWiner(gameState[1]);
          markPoints(gameState[1]);
          gameEnd = true;
        });
      } else if ((gameState[2]) != 'empty' && 
      (gameState[2] == gameState[5]) &&
      (gameState[5] == gameState[8])) {
        setState(() {
          showWiner(gameState[2]);
          markPoints(gameState[2]);
          gameEnd = true;
        });
      } else if ((gameState[0]) != 'empty' && 
      (gameState[0] == gameState[4]) &&
      (gameState[4] == gameState[8])) {
        setState(() {
          showWiner(gameState[0]);
          markPoints(gameState[0]);
          gameEnd = true;
        });
      } else if ((gameState[2]) != 'empty' && 
      (gameState[2] == gameState[4]) &&
      (gameState[4] == gameState[6])) {
        setState(() {
          showWiner(gameState[2]);
          markPoints(gameState[2]);
          gameEnd = true;
        });
      } else if (!gameState.contains('empty')) {
        setState(() {
          showWiner('Empate');
          markPoints('draw');
          gameEnd = true;
        });
      }

    }

  }

  resetGame() {
    setState(() {
      gameState = [
        "empty",
        "empty",
        "empty",
        "empty",
        "empty",
        "empty",
        "empty",
        "empty",
        "empty",
      ];
      gameEnd = false;
    });
  }

  newGame() {
    resetGame();
    setState(() {
      aspaWin = 0;
      circuloWin = 0;
      draw = 0;
    });
  }

  markPoints(String mark) {
    switch (mark) {
      case ('aspa'):
        setState(() {
          aspaWin += 1;
        });  
        break;
      case ('circulo'):
        setState(() {
          circuloWin += 1;
        });  
        break;
      case ('draw'):
        setState(() {
          draw += 1;
        });  
        break;
    }
  }

  showWiner(String winer) {
    _scafoldKey.currentState.showSnackBar(SnackBar(
      content: CupertinoAlertDialog(title:Text('Ganador ${winer}'),),
      duration: Duration(seconds: 1),
      
    ));
  }


}