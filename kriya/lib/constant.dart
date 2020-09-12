import 'package:flutter/material.dart';

Color kDarkBlueColor=Color.fromRGBO(20, 26, 83,1);
const primaryColor= Color(0xFF141A53);
Color kHeaderColor=Color.fromRGBO(20, 26, 83,1);
TextStyle kHeaderTableStyle =TextStyle(
  color: Colors.white,
  fontWeight: FontWeight.bold,
);

List<DropdownMenuItem<int>> yearList = [
  DropdownMenuItem(
    child: Text('2014'),
    value: 2014,
  ),
  DropdownMenuItem(
    child: Text('2015'),
    value: 2015,
  ),
  DropdownMenuItem(
    child: Text('2016'),
    value: 2016,
  ),
  DropdownMenuItem(
    child: Text('2017'),
    value: 2017,
  ),
  DropdownMenuItem(
    child: Text('2018'),
    value: 2018,
  ),
  DropdownMenuItem(
    child: Text('2019'),
    value: 2019,
  ),
  DropdownMenuItem(
    child: Text('2020'),
    value: 2020,
  ),
  DropdownMenuItem(
    child: Text('2021'),
    value: 2021,
  ),
];