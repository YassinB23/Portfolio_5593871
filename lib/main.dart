import 'package:flutter/material.dart';
import 'pages/home_page.dart';  // <- Hier wird deine Seite eingebunden

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Portfolio App',
      home: HomePage(),   // <- Hier wird deine Seite als Startseite gesetzt
    );
  }
}
