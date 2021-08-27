import 'package:flutter/material.dart';
import 'package:x_o_game/splash_screen.dart';
main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "x_o Game",
      debugShowCheckedModeBanner: false,
      home: Splash(),
    );
  }
}
