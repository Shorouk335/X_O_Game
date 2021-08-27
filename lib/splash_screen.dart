import 'package:flutter/material.dart';
import 'package:x_o_game/x_o_body_game.dart';

class Splash extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return Splash1();
  }
}

class Splash1 extends State<Splash> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 2), () {
      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (_) {
        return XO();
      }));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.clear,
                  size: 150,
                  color: Colors.white,
                ),
                Icon(
                  Icons.brightness_1_outlined,
                  size: 100,
                  color: Colors.white,
                )
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "G A M E",
              style: TextStyle(
                color: Colors.white,
                fontSize: 35,
                fontWeight: FontWeight.bold,
              ),
            )
          ],
        ),
      ),
    );
  }
}
