import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:image_cropper/image_cropper.dart';
import 'package:image_picker/image_picker.dart';
import 'package:path_provider/path_provider.dart' as p;
import 'package:flutter/material.dart';
import 'package:image_gallery_saver/image_gallery_saver.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:screenshot/screenshot.dart';
import 'package:share_extend/share_extend.dart';
import 'package:shital_physio/widgets/icon_avatar.dart';
import 'package:toast/toast.dart';
import 'package:image_crop/image_crop.dart';

class ImageScreen extends StatefulWidget {
  final String imagePath;
  final String index;
  final bool isSquare;

  ImageScreen({
    this.imagePath,
    this.index,
    this.isSquare = true,
  });

  @override
  _ImageScreenState createState() => _ImageScreenState();
}

class _ImageScreenState extends State<ImageScreen> {
  File _imageFile;
  ScreenshotController screenshotController = ScreenshotController();
  bool isLoading = false;
  bool shareLoading = false;

//  double hFactor=0.0;
//  int xScale=1;
//  int yScale=1;
//
//  void configureSize(int i){
//    switch(i)
//    {
//      case 0:hFactor=0.6;
//             xScale=1;
//             yScale=1;
//    }
//  }

  Future<bool> checkPermission() async {
    final statuses = await Permission.storage.request();

    if (statuses.isGranted) {
      return true;
    }
    return false;
  }

  Future<void> captureAndSaveImage({bool shareImage = false}) async {
    if (_imageFile == null) {
      Toast.show(
        'Please select an image first',
        context,
        backgroundColor: Colors.red,
        duration: 2,
        backgroundRadius: 10,
      );
      return null;
    }
    if (await checkPermission()) {
      setState(() {
        shareImage ? shareLoading = true : isLoading = true;
      });
      final directory = (await p.getTemporaryDirectory()).path; //fr
      String fileName = DateTime.now().millisecondsSinceEpoch.toString();
      String tempPath = '$directory/$fileName.png';
      screenshotController
          .capture(path: tempPath, pixelRatio: 8.0)
          .then((File image) async {
        print('here is a path : ${image.path}');
        setState(() {

          shareLoading = false;
        });
        if (shareImage) {
          ShareExtend.share(image.path, 'image');
        } else {
          final result =
              await ImageGallerySaver.saveImage(image.readAsBytesSync());
          print("File Saved to Gallery : $result");
          Toast.show(
            'Image saved to gallery',
            context,
            backgroundColor: Colors.lightGreen,
            duration: 2,
            backgroundRadius: 10,
          );
          setState(() {
            isLoading=false;
            _imageFile=null;
          });
          Directory(directory).delete(recursive: true);
        }
      }).catchError((onError) {
        print(onError);
        setState(() {
          isLoading = false;
          shareLoading=false;
        });
        Toast.show(
          onError.toString(),
          context,
          backgroundColor: Colors.red,
          backgroundRadius: 10,
        );
      });
    } else {
      Toast.show('Permission is required', context);
    }
  }

  Future<void> _takePicture(ImageSource type) async {
    // ignore: deprecated_member_use
    final image = await ImagePicker.pickImage(
      source: type,
    );
    if (image != null) {
      final croppedImage = await ImageCropper.cropImage(
        sourcePath: image.path,
        aspectRatio: widget.isSquare
            ? CropAspectRatio(ratioX: 1.0, ratioY: 1.0)
            : CropAspectRatio(ratioX: 3.0, ratioY: 4.0),
      );
      if (croppedImage != null) {
        print("Picked image path ${croppedImage.path}");
        setState(() {
          _imageFile = croppedImage;
        });
      }
    }
  }

  void showImagePickerOption(BuildContext ctx) {
    showModalBottomSheet(
        context: ctx,
        builder: (_) {
          return GestureDetector(
            onTap: () {},
            behavior: HitTestBehavior.opaque,
            child: Container(
              height: 80,
              margin: EdgeInsets.all(25),
              child: Row(
                children: [
                  IconAvatar(
                    color: Colors.lightBlue,
                    icon: Icons.camera_alt,
                    name: 'Camera',
                    onPress: () {
                      Navigator.of(context).pop();
                      _takePicture(ImageSource.camera);
                    },
                  ),
                  IconAvatar(
                    color: Colors.teal,
                    icon: Icons.image,
                    name: 'Gallery',
                    onPress: () {
                      Navigator.of(context).pop();

                      _takePicture(ImageSource.gallery);
                    },
                  ),
                  IconAvatar(
                    color: Colors.redAccent,
                    icon: Icons.clear,
                    name: 'Clear',
                    onPress: () {
                      setState(() {
                        _imageFile = null;
                      });
                      Navigator.of(context).pop();
                    },
                  ),
                ],
              ),
            ),
          );
        });
  }

  Widget buildImageWidget({double width, BuildContext context, double height}) {
    if (_imageFile == null) {
      return Container(
        color: Colors.grey[100],
        height: widget.isSquare ? width * 0.9 : height * 0.6,
        width: width * 0.9,
        alignment: Alignment.center,
        child: InkWell(
          onTap: () {},
          child: Icon(
            Icons.add_circle,
            size: 50.0,
            color: Colors.lightBlue,
          ),
        ),
      );
    } else {
      return Image.file(
        _imageFile,
        width: width * 0.9,
        height: widget.isSquare ? width * 0.9 : height * 0.6,
        fit: BoxFit.fill,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        title: Text(
          'Edit Image',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Container(
        color: Colors.white,
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 20.0,),
                Container(
//                padding: EdgeInsets.all(1.0),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.grey,
                      width: 0.2,
                    ),
                  ),
                  child: Screenshot(
                    controller: screenshotController,
                    child: Container(
                      height: widget.isSquare ? width * 0.9 : height * 0.6,
                      width: width * 0.9,
                      child: Stack(
                        children: [
                          buildImageWidget(
                            width: width,
                            context: context,
                            height: height,
                          ),
                          InkWell(
                            onTap: () => showImagePickerOption(context),
                            child: Hero(
                              tag: widget.index,
                              child: Image.asset(
                                widget.imagePath,
                                width: width * 0.9,
                                height: widget.isSquare
                                    ? width * 0.9
                                    : height * 0.6,
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 40.0,
                ),
                Stack(
                  children: [
                    Visibility(
                      visible: shareLoading,
                      child: SpinKitRing(
                        color: Colors.blue,
                        size: 55.0,
                      ),
                    ),
                    Center(
                      child: Card(
                        elevation: 1.0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50.0),
                        ),
                        child: InkWell(
                          onTap: () => captureAndSaveImage(shareImage: true),
                          borderRadius: BorderRadius.circular(50.0),
                          child: Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Icon(Icons.share),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 30.0, vertical: 10.0),
          child: isLoading
              ? Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 45.0,
                      child: SpinKitWave(
                        color: Colors.lightBlue,
                      ),
                    )
                  ],
                )
              : RaisedButton.icon(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(6.0)),
                  color: Colors.lightBlue,
                  textColor: Colors.white,
                  onPressed: captureAndSaveImage,
                  icon: Icon(Icons.save_alt),
                  label: Text('Save To Gallery'),
                ),
        ),
      ),
    );
  }
}
