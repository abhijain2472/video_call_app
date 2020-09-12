import 'package:agora_rtc_engine/agora_rtc_engine.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:lottie/lottie.dart';
import 'package:share/share.dart';
import 'package:video_call/utils/constants.dart';
import 'package:video_call/utils/unique_id.dart';
import 'package:video_call/widgets/icon_box.dart';
import 'package:video_call/widgets/icon_text_widget.dart';

import 'call_screen.dart';

class CreateMeetingScreen extends StatefulWidget {
  static const ROUTE_NAME = 'create-meeting';

  @override
  _CreateMeetingScreenState createState() => _CreateMeetingScreenState();
}

class _CreateMeetingScreenState extends State<CreateMeetingScreen> {
  String channelID = UniqueId.randomKey(10);
  final scaffoldKey = GlobalKey<ScaffoldState>();
  ClientRole _role = ClientRole.Broadcaster;



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        title: Text('Create Meeting'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            buildAnimation(context),
            buildTitleText(),
            buildChannelIdBox(),
            buildIconRow(),
            buildStartButton(),
          ],
        ),
      ),
    );
  }
  void copyMeetingId() {
    Clipboard.setData(
      ClipboardData(text: channelID),
    );

    scaffoldKey.currentState.showSnackBar(
      SnackBar(
        duration: Duration(seconds: 2),
        content: RichText(
          text: TextSpan(
              text: 'Meeting id is copied to clipboard : ',
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
              ),
              children: <TextSpan>[
                TextSpan(
                  text: channelID,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                )
              ]),
        ),
        backgroundColor: Colors.lightBlue,
      ),
    );
  }

  void shareMeetingId() {
    Share.share(
      'Enter below meeting ID in *video calling flutter* application to join a meeting :\n*$channelID*',
    );
  }

  Future<void> onStartMeeting()async{
    await Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) => CallScreen(
          channelName: channelID,
          role: _role,
          fromCreateScreen: true,
        ),
      ),
    );
  }

  Widget buildAnimation(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        top: 30.0,
        bottom: 60.0,
      ),
      child: Lottie.asset(
        'assets/images/create_animation.json',
        width: MediaQuery.of(context).size.width * 0.7,
      ),
    );
  }

  Widget buildTitleText() {
    return Container(
      padding: EdgeInsets.only(
        bottom: 5.0,
        top: 10.0,
      ),
      child: Text(
        'Your Meeting Id',
        style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w400),
      ),
    );
  }

  Widget buildChannelIdBox() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.0),
        color: kLightBlueColor,
      ),
      alignment: Alignment.center,
      padding: EdgeInsets.symmetric(
        vertical: 16.0,
      ),
      width: double.infinity,
      child: Text(
        channelID,
        style: TextStyle(
          fontWeight: FontWeight.bold,
          color: Colors.lightBlueAccent,
          fontSize: 28.0,
        ),
      ),
    );
  }

  Widget buildIconRow() {
    return Container(
      margin: const EdgeInsets.only(
        bottom: 30.0,
        top: 5.0,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          IconText(
            text: 'Copy',
            icon: Icons.content_copy,
            onPress: copyMeetingId,
          ),
          IconText(
            text: 'Share',
            icon: Icons.share,
            onPress: shareMeetingId,
          )
        ],
      ),
    );
  }

  Widget buildStartButton() {
    return Container(
      margin: EdgeInsets.only(top: 30.0),
      child: RaisedButton.icon(
        padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 40.0),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.0),
        ),
        color: Colors.redAccent,
        onPressed: onStartMeeting,
        icon: Icon(
          Icons.play_circle_filled,
          color: Colors.white,
        ),
        label: Text(
          'Start Meeting',
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
