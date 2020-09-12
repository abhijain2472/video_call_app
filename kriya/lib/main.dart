import 'package:flutter/material.dart';
import 'package:kriya/constant.dart';
import 'package:kriya/screens/home_screen.dart';
import 'package:kriya/screens/login_screen.dart';
import 'package:kriya/screens/splash_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: primaryColor,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: SplashScreen(),
      routes: {
        LoginScreen.routeName:(ctx)=>LoginScreen(),
        HomeScreen.routeName:(ctx)=>HomeScreen(),
      },
    );
  }
}
