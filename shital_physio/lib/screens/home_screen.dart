import 'dart:io';

import 'package:flutter/material.dart';
import 'package:shital_physio/screens/portrait_screen.dart';
import 'package:shital_physio/screens/square_screen.dart';
import 'package:shital_physio/widgets/tabBar_item.dart';
import 'package:path_provider/path_provider.dart' as p;

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool squareSelected = true;
  bool portraitSelected = false;
  bool landscapeSelected = false;
  PageController _pageController;

  void clearCache()async{
    final directory = (await p.getTemporaryDirectory()).path;
    Directory(directory).delete(recursive: true);
  }

  void selectTab(int id) {
    _pageController.animateToPage(
      id,
      duration: Duration(milliseconds: 300),
      curve: Curves.easeInOut,
    );
  }

  void changeTabItem(int id) {
    setState(() {
      if (id == 0) {
        print('id 1 called');
        squareSelected = true;
        portraitSelected = false;
        landscapeSelected = false;
      } else if (id == 1) {
        print('id 2 called');

        squareSelected = false;
        portraitSelected = true;
        landscapeSelected = false;
      } else if (id == 2) {
        print('id 2 called');

        squareSelected = false;
        portraitSelected = false;
        landscapeSelected = true;
      }
    });
  }

  Widget buildDivider() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 6.0),
      color: Colors.grey,
      height: 26.0,
      width: 1,
    );
  }

  @override
  void initState() {
    _pageController = PageController();
    clearCache();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Shital Physiotherapy',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SizedBox(
            height: 6.0,
          ),
          Container(
            height: 35.0,
            margin: EdgeInsets.symmetric(
              horizontal: 18.0,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              border: Border.all(
                color: Colors.grey,
              ),
            ),
            child: Row(
              children: [
                TabBarItem(
                  name: 'Square',
                  isSelected: squareSelected,
                  onPressed: () => selectTab(0),
                ),
                buildDivider(),
                TabBarItem(
                  name: 'Portrait',
                  isSelected: portraitSelected,
                  onPressed: () => selectTab(1),
                ),
                buildDivider(),
                TabBarItem(
                  name: 'Landscape',
                  isSelected: landscapeSelected,
                  onPressed: () => selectTab(2),
                ),
              ],
            ),
          ),
          Expanded(
            child: PageView(
              controller: _pageController,
              children: [
                SquareScreen(),
                PortraitScreen(),
                Container(
                  child: Center(
                    child: Text('Sorry, not implemented yet 😕\n Coming soon...',textAlign:TextAlign.center,),
                  ),
                ),
              ],
              onPageChanged: (index) => changeTabItem(index),
            ),
          )
        ],
      ),
    );
  }
}
