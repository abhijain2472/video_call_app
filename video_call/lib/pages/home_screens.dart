import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:toast/toast.dart';
import 'package:video_call/pages/create_meeting_screen.dart';
import 'package:video_call/pages/join_meeting_screen.dart';
import 'package:video_call/utils/network_service.dart';
import 'package:video_call/widgets/icon_box.dart';

class HomeScreen extends StatelessWidget {
  static const ROUTE_NAME = 'home';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Video Call Flutter'),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          buildAnimation(context),
          buildIconRow(context),
        ],
      ),
    );
  }

  Future<bool> _handleCameraAndMic() async {
    bool cameraStatus = await Permission.camera.request().isGranted;
    bool audioStatus = await Permission.microphone.request().isGranted;
    return (cameraStatus && audioStatus);
  }

  void navigateToScreen({
    @required String routeName,
    @required BuildContext context,
  }) async {
    bool permissionStatus = await _handleCameraAndMic();
    // push video page with given channel name
    if (permissionStatus) {
      if (await NetworkService.checkDataConnectivity()) {
        Navigator.of(context).pushNamed(routeName);
      } else {
        Toast.show(
          'Please turn on the internet',
          context,
          backgroundColor: Colors.blue,
          textColor: Colors.white,
          duration: 2,
          backgroundRadius: 6.0,
        );
      }
    } else {
      Toast.show(
        'Please allow all permissions',
        context,
        backgroundColor: Colors.blue,
        textColor: Colors.white,
        duration: 2,
        backgroundRadius: 6.0,
      );
    }
  }

  Widget buildAnimation(BuildContext context) {
    return Lottie.asset(
      'assets/images/video_animation.json',
      width: MediaQuery.of(context).size.width * 0.6,
    );
  }

  Widget buildIconRow(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        IconBox(
          text: 'Create Meeting',
          iconData: Icons.videocam,
          color: Colors.orange,
          onPress: () => navigateToScreen(
            routeName: CreateMeetingScreen.ROUTE_NAME,
            context: context,
          ),
        ),
        IconBox(
          text: 'Join Meeting',
          iconData: Icons.add_box,
          color: Colors.lightBlue,
          onPress: () => navigateToScreen(
            routeName: JoinMeetingScreen.ROUTE_NAME,
            context: context,
          ),
        )
      ],
    );
  }
}
