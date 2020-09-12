import 'package:agora_rtc_engine/agora_rtc_engine.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:video_call/utils/constants.dart';

import 'call_screen.dart';

class JoinMeetingScreen extends StatefulWidget {
  static const ROUTE_NAME = 'join-meeting';

  @override
  _JoinMeetingScreenState createState() => _JoinMeetingScreenState();
}

class _JoinMeetingScreenState extends State<JoinMeetingScreen> {
  final _channelController = TextEditingController();

  /// if channel textField is validated to have error
  bool _validateError = false;

  ClientRole _role = ClientRole.Broadcaster;



  @override
  void dispose() {
    // dispose input controller
    _channelController.clear();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: hideKeyboard,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Join Meeting'),
          centerTitle: true,
        ),
        body: SingleChildScrollView(

          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                buildAnimation(context),
                buildTitleText(),
                buildTextBox(),
                buildJoinButton(),
              ],
            ),
          ),
        ),
      ),
    );
  }
  void hideKeyboard() {
    FocusScope.of(context).unfocus();
  }

  Future<void> onJoin() async {
    hideKeyboard();
    // update input validation
    setState(() {
      _channelController.text.isEmpty
          ? _validateError = true
          : _validateError = false;
    });
    if (_channelController.text.isNotEmpty) {
      String channelName = _channelController.text;
      // push video page with given channel name
      await Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => CallScreen(
            channelName: channelName,
            role: _role,
          ),
        ),
      );
      _channelController.clear();
    }
  }

  Widget buildAnimation(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        top: 30.0,
        bottom: 40.0,
      ),
      child: Lottie.asset(
        'assets/images/join_animation.json',
        width: MediaQuery.of(context).size.width * 0.8,
      ),
    );
  }

  Widget buildTitleText() {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 50.0,
        vertical: 15.0,
      ),
      child: Text(
        'Enter a meeting id in below box to join the meeting',
        textAlign: TextAlign.center,
        style: TextStyle(
          fontWeight: FontWeight.w500,
          fontSize: 16.0,
        ),
      ),
    );
  }

  Widget buildTextBox() {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 20.0,
        vertical: 10.0,
      ),
      child: TextField(
        style: TextStyle(fontSize: 18.0),
        controller: _channelController,
        decoration: InputDecoration(
          errorText: _validateError ? 'Channel name is mandatory' : null,
          border: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(6.0),
          ),
          fillColor: kLightBlueColor,
          filled: true,
          hintText: 'Enter Meeting Id',

          hintStyle: TextStyle(
            fontSize: 18.0,
            color: Colors.grey,
          ),
        ),
        onEditingComplete:onJoin
      )
    );
  }

  Widget buildJoinButton() {
    return Container(
      margin: EdgeInsets.only(top: 60.0),
      child: RaisedButton.icon(
        padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 40.0),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.0),
        ),
        color: Colors.lightGreen,
        onPressed: onJoin,
        icon: Icon(
          Icons.video_call,
          color: Colors.white,
        ),
        label: Text(
          'Join Meeting',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 18.0,
          ),
        ),
      ),
    );
  }
}
