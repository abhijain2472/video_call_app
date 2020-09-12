import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      body: Center(child: Image(image: AssetImage('Images/coder.png'),)),
      backgroundColor: Colors.lightGreen,
      appBar: AppBar(
        title: Center(child: Text('I am Coder')), backgroundColor: Colors.green[900],),
    ),

  ));
}