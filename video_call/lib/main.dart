import 'package:flutter/material.dart';
import 'package:video_call/pages/call_screen.dart';
import 'package:video_call/pages/create_meeting_screen.dart';
import 'package:video_call/pages/home_screens.dart';
import 'package:video_call/pages/join_meeting_screen.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.lightBlue,
        primaryIconTheme: const IconThemeData.fallback().copyWith(
          color: Colors.white,
        ),
        primaryTextTheme: TextTheme(
            headline6: TextStyle(
                color: Colors.white
            )
        ),
      ),
      home: HomeScreen(),
      routes: {
        HomeScreen.ROUTE_NAME:(ctx)=>HomeScreen(),
        CreateMeetingScreen.ROUTE_NAME:(ctx)=>CreateMeetingScreen(),
        JoinMeetingScreen.ROUTE_NAME:(ctx)=>JoinMeetingScreen(),
        CallScreen.ROUTE_NAME:(ctx)=>CallScreen(),
      },
    );
  }
}
