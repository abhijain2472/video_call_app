import 'dart:async';
import 'package:agora_rtc_engine/agora_rtc_engine.dart';
import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:toast/toast.dart';

import './call_screen.dart';

class IndexPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => IndexState();
}

class IndexState extends State<IndexPage> {
  /// create a channelController to retrieve text value
  final _channelController = TextEditingController();

  /// if channel textField is validated to have error
  bool _validateError = false;

  ClientRole _role = ClientRole.Broadcaster;

  void hideKeyboard() {
    FocusScope.of(context).unfocus();
  }

  Future<bool> _handleCameraAndMic() async {
    bool cameraStatus = await Permission.camera.request().isGranted;
    bool audioStatus = await Permission.microphone.request().isGranted;
    return (cameraStatus && audioStatus);
  }

  @override
  void dispose() {
    // dispose input controller
    _channelController.clear();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        appBar: AppBar(
          title: Text('Agora Flutter QuickStart'),
        ),
        body: Center(
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            height: 400,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 20.0),
                  child: TextField(
                    controller: _channelController,
                    decoration: InputDecoration(
                      errorText:
                          _validateError ? 'Channel name is mandatory' : null,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: BorderSide(
                          color: Colors.blue,
                          width: 1.0,
                        ),
                      ),
                      hintText: 'Channel name',
                    ),
                  ),
                ),
                // Column(
                //                 //   children: [
                //                 //     ListTile(
                //                 //       title: Text(ClientRole.Broadcaster.toString()),
                //                 //       leading: Radio(
                //                 //         value: ClientRole.Broadcaster,
                //                 //         groupValue: _role,
                //                 //         onChanged: (ClientRole value) {
                //                 //           setState(() {
                //                 //             _role = value;
                //                 //           });
                //                 //         },
                //                 //       ),
                //                 //     ),
                //                 //     ListTile(
                //                 //       title: Text(ClientRole.Audience.toString()),
                //                 //       leading: Radio(
                //                 //         value: ClientRole.Audience,
                //                 //         groupValue: _role,
                //                 //         onChanged: (ClientRole value) {
                //                 //           setState(() {
                //                 //             _role = value;
                //                 //           });
                //                 //         },
                //                 //       ),
                //                 //     )
                //                 //   ],
                //                 // ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 20, horizontal: 10.0),
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: RaisedButton(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(6.0),
                          ),
                          onPressed: onJoin,
                          child: Container(
                            padding: EdgeInsets.symmetric(vertical: 4.0),
                            child: Text(
                              'Join',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20.0,
                              ),
                            ),
                          ),
                          color: Colors.blueAccent,
                          textColor: Colors.white,
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
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
      // await for camera and mic permissions before pushing video page
      bool permissionStatus = await _handleCameraAndMic();
      // push video page with given channel name
      if (permissionStatus) {
        await Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => CallScreen(
              channelName: channelName,
              role: _role,
            ),
          ),
        );
        _channelController.clear();
      } else {
        Toast.show(
          'Please allow all permissions',
          context,
          backgroundColor: Colors.amber,
          textColor: Colors.black,
          duration: 1,
        );
      }
    }
  }
}
