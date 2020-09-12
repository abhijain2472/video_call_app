import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:localstorage/localstorage.dart';
import 'package:weather_app/screens/city_name_screen.dart';
import 'package:weather_app/screens/city_weather_screen.dart';
import 'package:weather_app/services/weather_service.dart';
import 'package:weather_app/models/city_weather.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final LocalStorage _cityStorage = new LocalStorage('City');

  CityWeather _cityWeather;
  bool isLoading = true;


  @override
  void initState() {

    _getWeather();
    super.initState();
  }

  void selectCity() async {
    var result = await Navigator.of(context).push(
      MaterialPageRoute(
        builder: (ctx) => CityNameScreen(),
      ),
    );
    if (result != null) {
      setState(() {
        _getWeather(cityName: result);
        isLoading = true;
      });
    }
  }

  void _getWeather({String cityName}) async {
    cityName == null
        ? _cityWeather = await WeatherService().getCurrentWeather()
        : _cityWeather =
            await WeatherService().getCurrentWeather(city: cityName);
    setState(() {
      isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: isLoading
          ? Stack(
              children: [
                Container(
                  color: Colors.black,
                  alignment: Alignment.center,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Image.asset(
                        'assets/images/logonew.png',
                        width: MediaQuery.of(context).size.width * 0.4,
                      ),
                      SizedBox(
                        height: 18.0,
                      ),
                      Text(
                        'WEATHER',
                        style: TextStyle(
                            fontFamily: 'CabinSketch',
                            fontWeight: FontWeight.bold,
                            fontSize: 30.0,
                            letterSpacing: 1.5,
                            color: Colors.lightBlue),
                      ),
                    ],
                  ),
                ),
                Container(
//                  color: Colors.grey.withOpacity(0.3),
                  child: Center(
                    child: SpinKitFadingFour(
                      size: 70.0,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            )
          : Container(
              child: _cityWeather != null
                  ? CityWeatherScreen(
                      cityWeather: _cityWeather,
                    )
                  : Container(
                color: Colors.black,
                alignment: Alignment.center,
                    child:Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Invalid City Name, No Data Found',
                          style: TextStyle(

                            color: Colors.red,
                            fontWeight: FontWeight.bold,
                            fontSize: 20.0,
                          ),
                        ),
                        SizedBox(height: 15.0,),
                        Container(
                          margin: EdgeInsets.symmetric(horizontal: 30.0),
                          child: RaisedButton.icon(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(6.0)),
                            color: Colors.amber,
                            icon: Icon(Icons.location_city),
                            label: Text('Select New City'),
                            onPressed: () =>selectCity(),
                          ),
                        ),
                      ],
                    )
                  ),
            ),
    );
  }
}
