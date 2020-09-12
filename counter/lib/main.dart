import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int no = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Counter',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              )),
        ),

        body:Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('You have pushed the button this many times :'),
              Text('$no',style: TextStyle(fontSize: 30),),
            ],
          ),
        ),

        floatingActionButton: FloatingActionButton(
          onPressed: (){
           setState(() {
             no++;
           });
          },
          child: Icon(Icons.add),
          tooltip: 'Increment',
        )
      ),
    );
  }
}
