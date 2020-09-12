import 'package:flutter/material.dart';
import 'package:shital_physio/screens/image_screen.dart';
import 'package:path_provider/path_provider.dart' as p;

// ignore: must_be_immutable
class SquareScreen extends StatelessWidget {
  List<String> squareImages = [
    'assets/images/1.png',
    'assets/images/2.png',
    'assets/images/3.png',
    'assets/images/4.png',
    'assets/images/5.png',
    'assets/images/6.png',
    'assets/images/7.png',
    'assets/images/8.png',
    'assets/images/9.png',
    'assets/images/10.png',


  ];

  @override
  Widget build(BuildContext context) {
    return  Container(
      padding: EdgeInsets.all(6.0),
      child: GridView.count(
        crossAxisCount: 2,
        padding: EdgeInsets.all(10.0),
        crossAxisSpacing: 4.0,
        mainAxisSpacing: 4.0,
        children: squareImages
            .map(
              (imagePath) => Card(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12.0)),
            elevation: 6.0,
            child: InkWell(
              borderRadius: BorderRadius.circular(12.0),
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => ImageScreen(
                      imagePath: imagePath,
                      index: squareImages.indexOf(imagePath).toString(),
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
                    tag: squareImages.indexOf(imagePath).toString(),
                    child: Image.asset(imagePath)),
              ),
            ),
          ),
        )
            .toList(),
      ),
    );
  }
}
