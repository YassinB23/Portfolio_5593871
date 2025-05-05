import 'package:flutter/material.dart';
import 'pages/home_page.dart'; // das ist der Import der neuen HomePage

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Portfolio App',
      home: HomePage(), // hier wird die neue Startseite geladen
    );
  }
}
