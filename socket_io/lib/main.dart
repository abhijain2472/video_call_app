import 'package:flutter/material.dart';
import 'package:flutter_simple_dependency_injection/injector.dart';
import 'package:socket_io/models/AppInitializer.dart';
import 'package:socket_io/models/DependencyService.dart';
import 'package:socket_io/screens/ChatScreen.dart';
import 'package:socket_io/screens/ChatUserScreen.dart';
import 'package:socket_io/screens/LoginScreen.dart';

void main() async {
  Injector injector;
  injector = Injector.getInjector();
  DependencyInjection().initialise(injector);
  await AppInitializer().initialise(injector);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Chat Application',
      initialRoute: LoginScreen.ROUTE_ID,
      routes: {
        LoginScreen.ROUTE_ID: (ctx)=>LoginScreen(),
        ChatUsersScreen.ROUTE_ID: (ctx)=>ChatUsersScreen(),
        ChatScreen.ROUTE_ID: (ctx)=>ChatScreen(),
      },
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: LoginScreen(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Chat Application'),
      ),
      body: Container(),// This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
