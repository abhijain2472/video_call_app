import 'dart:collection';
import 'dart:math';

import 'package:flappy_search_bar/flappy_search_bar.dart';
import 'package:flappy_search_bar/scaled_tile.dart';
import 'package:flutter/material.dart';
import 'package:localstorage/localstorage.dart';
import 'package:search_page/search_page.dart';
import 'package:weather_app/utils/search_delegate.dart';

class UniqueColorGenerator {
  static Random random = new Random();

  static Color getColor() {
    return Color.fromARGB(
        255, random.nextInt(255), random.nextInt(255), random.nextInt(255));
  }
}

class CityNameScreen extends StatefulWidget {
  @override
  _CityNameScreenState createState() => _CityNameScreenState();
}

class _CityNameScreenState extends State<CityNameScreen> {
  final LocalStorage cityStorage = new LocalStorage('City');

  List<dynamic> _cityNameList = [];

  List<dynamic> _searchCityList = [
    'AHMEDABD',
    'MUMBAI',
    'DELHI',
    'TEST',
    'RONAK',
    'SAHIL',
    'DHRUV',
    'JANAK',
    'KENIL',
    'NIYAL',
    'NISHANT',
    'VIRAJ',
    'CHINTAN',
  ];

  void showCityDialog(BuildContext context) {
    String newCityName;
    final _formKey = GlobalKey<FormState>();

    showDialog(
      context: context,
      child: SimpleDialog(
        title: Text(
          'Add New City',
        ),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
        children: [
          Container(
            margin: EdgeInsets.symmetric(horizontal: 16.0),
            child: Form(
              key: _formKey,
              child: TextFormField(
                decoration: InputDecoration(
                  fillColor: Colors.white,
                  hintText: 'Enter City Name',
                ),
                validator: (cityname) {
                  if (cityname.trim().isEmpty) {
                    return 'Please enter city name';
                  }
                  return null;
                },
                onChanged: (cityName) {
                  newCityName = cityName;
                },
              ),
            ),
          ),
          SizedBox(height: 20.0),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 30.0),
            child: RaisedButton.icon(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(6.0)),
              color: Colors.amber,
              icon: Icon(Icons.add_location),
              label: Text('Add City'),
              onPressed: () {
                if (_formKey.currentState.validate()) {
                  _cityNameList.add(newCityName.toUpperCase());
                  _cityNameList =
                      LinkedHashSet<String>.from(_cityNameList).toList();
                  cityStorage.setItem('cityList', _cityNameList);

                  Navigator.of(context).pop();

                  setState(() {});
                }
              },
            ),
          ),
        ],
      ),
    );
  }

  void showDeleteDialog(String cityName) {
    showDialog(
      context: context,
      builder: (context) => new AlertDialog(
        title: new Text('Do you want to delete $cityName ?'),
        actions: <Widget>[
          new FlatButton(
            onPressed: () => Navigator.of(context).pop(),
            child: new Text('No'),
          ),
          new FlatButton(
            onPressed: () {
              setState(() {
                _cityNameList.remove(cityName);
                cityStorage.setItem('cityList', _cityNameList);
                Navigator.of(context).pop(true);
              });
            },
            child: new Text('Yes'),
          ),
        ],
      ),
    );
  }

  @override
  void initState() {
    getCityList();
    super.initState();
  }

  void getCityList() async {
    _cityNameList = await cityStorage.getItem('cityList') ?? [];
    print('City name list is : $_cityNameList');
//    _cityNameList.toSet().toList();

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        actions: [
//          IconButton(
//            icon: Icon(
//              Icons.add_location,
//              color: Colors.white,
//            ),
//            onPressed: () => showCityDialog(context),
//          )
          IconButton(
              icon: Icon(
                Icons.search,
                color: Colors.white,
              ),
              onPressed: () async {
                String newCityName = await showSearch(
                  context: context,
                  delegate: CustomSearchDelegate(),

                );
                if(newCityName !=null){
                  _cityNameList.add(newCityName.toUpperCase());
                  _cityNameList =
                      LinkedHashSet<String>.from(_cityNameList).toList();
                  cityStorage.setItem('cityList', _cityNameList);
                  setState(() { });
                }
              })
//
        ],
        backgroundColor: Colors.black,
        title: Text(
          'Select City',
          style: TextStyle(color: Colors.white),
        ),
        iconTheme: IconThemeData(
          color: Colors.white,
        ),
      ),
      body: Container(
        color: Colors.black,
        padding: EdgeInsets.symmetric(horizontal: 10.0),
        child: _cityNameList.isNotEmpty
            ? GridView.count(
                mainAxisSpacing: 5.0,
                crossAxisSpacing: 10.0,
                crossAxisCount: 2,
                childAspectRatio: 4 / 2,
                shrinkWrap: true,
                children: _cityNameList
                    .map(
                      (city) => buildCityCard(
                        context: context,
                        name: city,
                      ),
                    )
                    .toList(),
              )
            : Container(
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'No city added yet !!',
                        style: TextStyle(
                            color: Colors.white,
                            letterSpacing: 0.5,
                            fontWeight: FontWeight.bold,
                            fontSize: 20.0),
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 30.0),
                        child: RaisedButton.icon(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(6.0)),
                          color: Colors.amber,
                          icon: Icon(Icons.add_location),
                          label: Text('Add City'),
                          onPressed: () => showCityDialog(context),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
//        child: ListView(
//          children: [
//            SizedBox(height: 10.0,),
//            buildCityCard(name: 'Ahmedabad', width: width, context: context),
//
//            buildCityCard(name: 'Mumbai', width: width, context: context),
//            buildCityCard(name: 'Delhi', width: width, context: context),
//            buildCityCard(name: 'Chicago', width: width, context: context),
//            buildCityCard(name: 'London', width: width, context: context),
//          ],
//        ),
      ),
    );
  }

  Widget buildCityCard({
    String name,
    double width,
    BuildContext context,
  }) {
    final color1 = UniqueColorGenerator.getColor();
    final color2 = UniqueColorGenerator.getColor();
    return InkWell(
      borderRadius: BorderRadius.circular(12.0),
      onTap: () {
        Navigator.pop(context, name);
      },
      onLongPress: () => showDeleteDialog(name),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12.0),
        ),
        child: Container(
          alignment: Alignment.center,
          width: 200,
          height: 200,

//          padding: EdgeInsets.symmetric(vertical: .0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12.0),
            gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [
                  color1,
                  color2,
                ]),
          ),
//          width: width,
          child: FittedBox(
            child: Text(
              name,
              style: TextStyle(
                color: Colors.white,
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
