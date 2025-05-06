import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Portfolio App'),
      ),
      body: Center(
        child: Text(
          'Willkommen im Portfolio von Yassin!',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}