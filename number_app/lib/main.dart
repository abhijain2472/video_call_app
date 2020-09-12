import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.lightBlue,
        appBar: AppBar(
          backgroundColor: Colors.blue.shade700,
          title: Center(child: Text('Random Number')),
        ),
        body: numberPage(),
      ),
    ),
  );
}

class numberPage extends StatefulWidget {
  @override
  _numberPageState createState() => _numberPageState();
}

class _numberPageState extends State<numberPage> {
  int a = 1;
  int b = 2;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Row(
            children: <Widget>[
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Image.asset('images/num$a.png'),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Image.asset('images/num$b.png'),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(

                height: 200.0,
                width: 200.0,
                child: FlatButton(
                  child: Image(
                    height: 200.0,
                    width: 200.0,
                    image: AssetImage('images/btn.png'),

                  ),
                  onPressed: () {
                    change();
                  },
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  void change() {
    setState(
      () {
        a = Random().nextInt(5) + 1;
        b = Random().nextInt(5) + 1;
      },
    );
  }
}
