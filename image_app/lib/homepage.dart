import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_gallery_saver/image_gallery_saver.dart';
import 'package:path_provider/path_provider.dart' as p;
import 'package:screenshot/screenshot.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:toast/toast.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  File _imageFile;
  ScreenshotController screenshotController = ScreenshotController();


  Future<bool> checkPermission()async{
    final  statuses=await Permission.storage.request();
    if(statuses.isGranted) {
      return true;
    }
    return false;
  }
  captureAndSaveImage() async {
    if(await checkPermission()) {
      final directory = (await p.getTemporaryDirectory()).path; //fr
      String fileName = DateTime.now().toIso8601String();
      String path = '$directory/$fileName.png';
      screenshotController.capture(path: path, pixelRatio: 8.0).then((
          File image) async {
        print('here is a path : ${image.path}');
        setState(() {
          _imageFile = image;
        });
        final result = await ImageGallerySaver.saveImage(image
            .readAsBytesSync()); // Save image to gallery,  Needs plugin  https://pub.dev/packages/image_gallery_saver
        print("File Saved to Gallery : $result");
        Directory(directory).delete(recursive: true);
      }).catchError((onError) {
        print(onError);
      });
    } else {
      Toast.show('Permission is required', context);
    }
  }

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Center(
          child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Screenshot(
              controller: screenshotController,
              child: Container(
                width: width * 0.8,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Stack(
                      children: [
                        Image.asset(
                          'assets/images/test.jpg',
                          fit: BoxFit.cover,
                        ),
                        Positioned(
                          top: 6.0,
                          left: 6.0,
                          child: Image.asset(
                            'assets/images/icon.png',
                            width: 20,
                          ),
                        ),
                        Positioned(
                          bottom: 4.0,
                          right: 4.0,
                          child: Text(
                            'Abhishek Jain',
                            style:
                                TextStyle(color: Colors.white, fontSize: 6.0),
                          ),
                        ),
                      ],
                    ),
                    Container(
                      color: Colors.lightBlue,
                      padding:
                          EdgeInsets.symmetric(horizontal: 8.0, vertical: 2.0),
                      child: Text(
                        'C/15, Mira Park, Narayan Nagar, Near Petrol Pump, Khodiyar Nagar, Ahmedabad , Gujarat - 382350.',
                        softWrap: true,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 8.0,
                          color: Colors.white,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 12.0,
            ),
            RaisedButton(
              onPressed: captureAndSaveImage,
              child: Text('Download'),
              color: Colors.amber,
            ),
            SizedBox(
              height: 20.0,
            ),
//            if (_imageFile != null)
//              Image.file(
//                _imageFile,
//                width: width * 0.6,
//                height: width*0.6,
//              ),
          ],
        ),
      )),
    );
  }
}
