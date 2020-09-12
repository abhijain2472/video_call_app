import 'dart:async';

import 'package:flutter/material.dart';
import 'package:kriya/constant.dart';
import 'package:kriya/screens/login_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'home_screen.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  bool savedUser=false;

  checkUser()async{
    SharedPreferences userStorage=await SharedPreferences.getInstance();
    savedUser=userStorage.getBool('isLoggedIn');
    Timer(Duration(seconds: 2), () {

      if(savedUser == true){
        Navigator.of(context).pushReplacementNamed(HomeScreen.routeName);
      }else{
        Navigator.of(context).pushReplacementNamed(LoginScreen.routeName);
      }

    });

  }



  @override
  void initState() {
   checkUser();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color:kDarkBlueColor,
      child: Center(
        child: Image.asset(
          'assets/images/Group@3x.png',
          width: MediaQuery.of(context).size.width * 0.50,
        ),
      ),
    );
  }
}
