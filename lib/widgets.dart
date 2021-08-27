import 'package:x_o_game/x_o_body_game.dart';
import 'package:flutter/material.dart';

//to make table of player name & score & x or o
Widget buildRow(var x, var y, double c,
    {Color u: Colors.deepPurple, var t = 1}) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      Text(
        "$x",
        style: TextStyle(
          fontSize: c,
          color: u,
        ),
      ),
      if (t == 1)
        Text(
          ":",
          style: TextStyle(
            fontSize: c,
            color: u,
          ),
        ),
      if (t == 0)
        SizedBox(
          width: 50,
        ),
      Text(
        "$y",
        style: TextStyle(
          fontSize: c,
          color: u,
        ),
      ),
    ],
  );
}

// to make horizontal line
Widget buildSize() {
  return SizedBox(
    child: Divider(
      thickness: 5,
    ),
  );
}

//to make table of icon of game
Widget buildB(int a, int b, int c) {
  return Row(
    children: [
      Expanded(
          child: TextButton(
            child: State1().B[a],
            onPressed: () {
              State1().on(a);
            },
          )),
      Expanded(
          child: TextButton(
            child: State1().B[b],
            onPressed: () {
              State1().on(b);
            },
          )),
      Expanded(
          child: TextButton(
            child: State1().B[c],
            onPressed: () {
              State1().on(c);
            },
          )),
    ],
  );
}
