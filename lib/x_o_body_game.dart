import 'package:flutter/material.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'package:x_o_game/widgets.dart';

class XO extends StatefulWidget {
  @override
  State1 createState() => State1();
}

class State1 extends State<XO> {
  // press variable to  put icon x if press=0 or o if press=1
  // the variables name of player and Score
  var press = 0;
  var Player1 = "Player 1 ";
  var Player2 = "Player 2 ";
  var X_Score = 0;
  var O_Score = 0;
  /* to make the game
  make list of icon replace to x icon or o icon and list of Random  num to calculate who are win
  with the method win
  */
  List num = [3, 4, 5, 8, 89, 7, 78, 34, 74];
  List<dynamic> B = [
    Icon(
      Icons.bolt,
      size: 100,
      color: Colors.grey.shade300,
    ),
    Icon(
      Icons.bolt,
      size: 100,
      color: Colors.grey.shade300,
    ),
    Icon(
      Icons.bolt,
      size: 100,
      color: Colors.grey.shade300,
    ),
    Icon(
      Icons.bolt,
      size: 100,
      color: Colors.grey.shade300,
    ),
    Icon(
      Icons.bolt,
      size: 100,
      color: Colors.grey.shade300,
    ),
    Icon(
      Icons.bolt,
      size: 100,
      color: Colors.grey.shade300,
    ),
    Icon(
      Icons.bolt,
      size: 100,
      color: Colors.grey.shade300,
    ),
    Icon(
      Icons.bolt,
      size: 100,
      color: Colors.grey.shade300,
    ),
    Icon(
      Icons.bolt,
      size: 100,
      color: Colors.grey.shade300,
    ),
  ];
  // in on press of any icon replace it to press if x=0 and make press++
  // OR o if press =1 and make press--
  void on(int m) {
    setState(() {
      if (press == 0) {
        B[m] = Icon(
          Icons.clear,
          size: 100,
          color: Colors.deepPurple,
        );
        press++;
        num[m] = 1;
      } else {
        B[m] = Icon(
          Icons.brightness_1_outlined,
          size: 70,
          color: Colors.deepPurple,
        );
        press--;
        num[m] = 2;
      }
    });
  }

  // the method that calculate the winner , incres score
  // and return the game to default icon and show dialog
  void Win() {
    if ((num[0] == num[1] && num[1] == num[2] && num[2] == 1) ||
        (num[3] == num[4] && num[4] == num[5] && num[5] == 1) ||
        (num[6] == num[7] && num[7] == num[8] && num[8] == 1))
      setState(() {
        X_Score++;
        show(context, Player1);
        playAgain(0);
      });
    else if ((num[0] == num[3] && num[3] == num[6] && num[6] == 1) ||
        (num[1] == num[4] && num[4] == num[7] && num[7] == 1) ||
        (num[2] == num[5] && num[5] == num[8] && num[8] == 1))
      setState(() {
        X_Score++;
        show(context, Player1);
        playAgain(0);
      });
    else if ((num[0] == num[4] && num[4] == num[8] && num[8] == 1) ||
        (num[2] == num[4] && num[4] == num[6] && num[6] == 1))
      setState(() {
        X_Score++;
        show(context, Player1);
        playAgain(0);
      });
    else if ((num[0] == num[1] && num[1] == num[2] && num[2] == 2) ||
        (num[3] == num[4] && num[4] == num[5] && num[5] == 2) ||
        (num[6] == num[7] && num[7] == num[8] && num[8] == 2))
      setState(() {
        O_Score++;
        show(context, Player2);
        playAgain(0);
      });
    else if ((num[0] == num[3] && num[3] == num[6] && num[6] == 2) ||
        (num[1] == num[4] && num[4] == num[7] && num[7] == 2) ||
        (num[2] == num[5] && num[5] == num[8] && num[8] == 2))
      setState(() {
        O_Score++;
        show(context, Player2);
        playAgain(0);
      });
    else if ((num[0] == num[4] && num[4] == num[8] && num[8] == 2) ||
        (num[2] == num[4] && num[4] == num[6] && num[6] == 2))
      setState(() {
        O_Score++;
        show(context, Player2);
        playAgain(0);
      });
  }

  // if i =0 return the game to default icon with present score
  // if i =1 return the game to default icon with Zero score
  void playAgain(var i) {
    setState(() {
      B[0] = Icon(
        Icons.bolt,
        size: 100,
        color: Colors.grey.shade300,
      );
      B[1] = Icon(
        Icons.bolt,
        size: 100,
        color: Colors.grey.shade300,
      );
      B[2] = Icon(
        Icons.bolt,
        size: 100,
        color: Colors.grey.shade300,
      );
      B[3] = Icon(
        Icons.bolt,
        size: 100,
        color: Colors.grey.shade300,
      );
      B[4] = Icon(
        Icons.bolt,
        size: 100,
        color: Colors.grey.shade300,
      );
      B[5] = Icon(
        Icons.bolt,
        size: 100,
        color: Colors.grey.shade300,
      );
      B[6] = Icon(
        Icons.bolt,
        size: 100,
        color: Colors.grey.shade300,
      );
      B[7] = Icon(
        Icons.bolt,
        size: 100,
        color: Colors.grey.shade300,
      );
      B[8] = Icon(
        Icons.bolt,
        size: 100,
        color: Colors.grey.shade300,
      );
      press = 0;
      num[0] = 8;
      num[1] = 18;
      num[2] = 28;
      num[3] = 38;
      num[4] = 48;
      num[5] = 58;
      num[6] = 68;
      num[7] = 78;
      num[8] = 88;
    });
    if (i == 1)
      setState(() {
        X_Score = 0;
        O_Score = 0;
        Player1 = "Player 1";
        Player2 = "Player 2";
      });
  }

  show(context, var name) {
    return Alert(
      type: AlertType.success,
      context: context,
      title: name,
      desc: "You Are Win",
      style: AlertStyle(
          descStyle: TextStyle(fontSize: 30, color: Colors.deepPurple)),
      buttons: [
        DialogButton(
          child: Text(
            "Keep Game",
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
          onPressed: () => Navigator.pop(context),
          color: Colors.deepPurple,
          radius: BorderRadius.circular(10.0),
        ),
        DialogButton(
          child: Text(
            "End Game",
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
          onPressed: () {
            playAgain(1);
            Navigator.pop(context);
          },
          color: Colors.deepPurple,
          radius: BorderRadius.circular(10.0),
        ),
      ],
    ).show();
  }

  NamePlayer(context, var y) {
    return Alert(
        context: context,
        desc: "Enter Player$y Name",
        style: AlertStyle(
            descStyle: TextStyle(
              color: Colors.deepPurple,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            )),
        content: TextField(
          onChanged: (value) {
            setState(() {
              if (y == 1)
                Player1 = value;
              else
                Player2 = value;
            });
          },
          cursorColor: Colors.deepPurple,
          style: TextStyle(
            fontSize: 25,
            color: Colors.deepPurple,
          ),
        ),
        buttons: [
          DialogButton(
            radius: BorderRadius.circular(15),
            child: Text(
              "Enter",
              style: TextStyle(
                color: Colors.white,
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
            onPressed: () => Navigator.pop(context),
            color: Colors.deepPurple,
          ),
        ]).show();
  }

  Widget buildGame(int a, int b, int c) {
    return Row(
      children: [
        Expanded(
            child: TextButton(
              child: B[a],
              onPressed: () {
                on(a);
                Win();
              },
            )),
        Expanded(
            child: TextButton(
              child: B[b],
              onPressed: () {
                on(b);
                Win();
              },
            )),
        Expanded(
            child: TextButton(
              child: B[c],
              onPressed: () {
                on(c);
                Win();
              },
            )),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "X O Game",
          style: TextStyle(
            fontSize: 25,
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.deepPurple,
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () => playAgain(0),
            icon: Icon(Icons.refresh),
            color: Colors.white,
            iconSize: 30,
          ),
        ],
      ),
      drawer: Drawer(
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Welcom To Game",
                style: TextStyle(
                  color: Colors.deepPurple,
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                  letterSpacing: 3,
                ),
              ),
              SizedBox(
                height: 40,
              ),
              TextButton(
                onPressed: () => NamePlayer(context, 1),
                child: Text(
                  "Enter Player1 Name",
                  style: TextStyle(
                    color: Colors.grey.shade600,
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                  ),
                ),
              ),
              TextButton(
                onPressed: () => NamePlayer(context, 2),
                child: Text(
                  "Enter Player2 Name",
                  style: TextStyle(
                    color: Colors.grey.shade600,
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        margin: EdgeInsets.all(30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            buildRow("$Player1", "$Player2", 30, t: 0),
            buildSize(),
            buildRow("X", "O", 30),
            buildSize(),
            buildRow(X_Score, O_Score, 30, u: Colors.black),
            buildSize(),
            SizedBox(),
            buildGame(0, 1, 2),
            buildGame(3, 4, 5),
            buildGame(6, 7, 8),
            SizedBox(),
            buildSize(),
          ],
        ),
      ),
    );
  }
}
