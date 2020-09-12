import 'package:flutter/material.dart';

import 'image_screen.dart';

class PortraitScreen extends StatelessWidget {
  List<String> portraitImages = [
    'assets/images/p1.png',
    'assets/images/p2.png',
    'assets/images/p3.png',
    'assets/images/p4.png',
    'assets/images/p5.png',
    'assets/images/p6.png',
    'assets/images/p7.png',
    'assets/images/p8.png',
    'assets/images/p9.png',
    'assets/images/p10.png',
  ];

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return Container(
      padding: EdgeInsets.all(6.0),
      child: GridView.count(
        childAspectRatio: 3 / 4,
        crossAxisCount: 2,
        padding: EdgeInsets.all(10.0),
        crossAxisSpacing: 4.0,
        mainAxisSpacing: 4.0,
        children: portraitImages
            .map(
              (imagePath) => Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12.0),
                ),
                elevation: 6.0,
                child: InkWell(
                  borderRadius: BorderRadius.circular(12.0),
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => ImageScreen(
                          imagePath: imagePath,
                          index: portraitImages.indexOf(imagePath).toString(),
                          isSquare: false,
                        ),
                      ),
                    );
                  },
                  child: Container(
                    margin: EdgeInsets.all(14.0),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(
                        color: Colors.grey,
                        width: 0.3,
                      ),
                    ),
                    child: Hero(
                      tag: portraitImages.indexOf(imagePath).toString(),
                      child: Image.asset(
                        imagePath,
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ),
              ),
            )
            .toList(),
      ),
    );
  }
}
