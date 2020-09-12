import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:intl/intl.dart';
import 'package:weather_app/models/city_weather.dart';
import 'package:weather_app/models/hourly_weather.dart';
import 'package:weather_app/services/weather_service.dart';
import 'package:weather_app/utils/constant.dart';
import 'package:weather_app/widgets/day_weather_tile.dart';
import 'package:weather_app/widgets/hourly_weather_tile.dart';
import 'package:weather_app/widgets/value_tile.dart';

import 'city_name_screen.dart';

// ignore: must_be_immutable
class CityWeatherScreen extends StatefulWidget {
  CityWeather cityWeather;

  CityWeatherScreen({this.cityWeather});

  @override
  _CityWeatherScreenState createState() => _CityWeatherScreenState();
}

class _CityWeatherScreenState extends State<CityWeatherScreen> {
  int currentIndex = 0;
  bool isLoading = false;

  @override
  void initState() {
    super.initState();
  }

  void changeWeatherTime(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  Widget buildSeparator({@required bool isLong}) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 8.0,
      ),
      child: Center(
        child: Container(
          width: 1,
          height: isLong ? 40.0 : 20.0,
          color: Theme.of(context).accentColor,
        ),
      ),
    );
  }

  void _getWeather({String cityName}) async {
    widget.cityWeather =
        await WeatherService().getCurrentWeather(city: cityName);
    currentIndex = 0;
    setState(() {
      isLoading = false;
    });
  }

  void selectCity() async {
    var result = await Navigator.of(context).push(
      MaterialPageRoute(
        builder: (ctx) => CityNameScreen(),
      ),
    );
    if (result != null) {
      setState(() {
        isLoading = true;
        _getWeather(cityName: result);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    bool isLightImage = widget.cityWeather == null
        ? false
        : widget.cityWeather.hourlyWeatherList[currentIndex].isLightImage();

    var plateform = Theme.of(context).platform;
    var windowsPlateform = TargetPlatform.windows;
    return Scaffold(
      backgroundColor: isLightImage ? kWhiteColor : kBlackColor,
      body: isLoading
          ? Center(
              child: SpinKitCircle(
                color: Colors.blue,
              ),
            )
          : widget.cityWeather != null
              ? AnimatedContainer(
                  duration: Duration(milliseconds: 600),
                  decoration: BoxDecoration(
                    color: isLightImage ? kWhiteColor : kBlackColor,
                  ),
                  child: Center(
                    child: SingleChildScrollView(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Stack(
                            children: [
                              ShaderMask(
                                shaderCallback: (rect) {
                                  return LinearGradient(
                                    begin: Alignment.topCenter,
                                    end: Alignment.bottomCenter,
                                    colors: [
                                      Colors.black,
                                      Colors.black,
                                      Colors.black,
                                      Colors.black,
                                      Colors.black,
                                      Colors.transparent
                                    ],
                                  ).createShader(
                                      Rect.fromLTRB(0, 0, 0, rect.height));
                                },
                                blendMode: BlendMode.dstIn,
                                child: AnimatedContainer(
                                  duration: Duration(milliseconds: 700),
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage(
                                        widget.cityWeather
                                            .hourlyWeatherList[currentIndex]
                                            .getGifImage(),
                                      ),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  child: Column(
                                    children: [
                                      AppBar(
                                        backgroundColor: Colors.transparent,
                                        elevation: 0.0,
                                        actions: [
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                right: 6.0),
                                            child: IconButton(
                                              icon: Icon(
                                                Icons.location_city,
                                                color: Colors.white,
                                                size: 28.0,
                                              ),
                                              onPressed: () => selectCity(),
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        height: 40.0,
                                      ),
                                      Text(
                                        DateFormat('EEEE, d MMMM yyyy').format(
                                          widget
                                              .cityWeather
                                              .hourlyWeatherList[currentIndex]
                                              .timeStamp,
                                        ),
                                        style: TextStyle(
                                          color: isLightImage
                                              ? kBlackColor
                                              : kWhiteColor,
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 10.0,
                                      ),
                                      Text(
                                        this
                                            .widget
                                            .cityWeather
                                            .cityName
                                            .toUpperCase(),
                                        style: TextStyle(
                                          fontWeight: FontWeight.w900,
                                          letterSpacing: 5,
                                          color: Colors.amber,
                                          fontSize: 25,
                                        ),
                                      ),
                                      Text(
                                        this
                                            .widget
                                            .cityWeather
                                            .countryName
                                            .toUpperCase(),
                                        style: TextStyle(
                                          fontWeight: FontWeight.w400,
                                          letterSpacing: 1.5,
                                          color: Colors.amber,
                                          fontSize: 8,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 20,
                                      ),
                                      Text(
                                        this
                                            .widget
                                            .cityWeather
                                            .hourlyWeatherList[currentIndex]
                                            .description
                                            .toUpperCase(),
                                        style: TextStyle(
                                          fontWeight: FontWeight.w200,
                                          letterSpacing: 5,
                                          fontSize: 15,
                                          color: isLightImage
                                              ? kBlackColor
                                              : kWhiteColor,
                                        ),
                                      ),
                                      SizedBox(height: 10.0),
                                      Icon(
                                        widget.cityWeather
                                            .hourlyWeatherList[currentIndex]
                                            .getIconData(),
                                        color: Theme.of(context).primaryColor,
                                        size: 60,
                                      ),
                                      SizedBox(
                                        height: 30,
                                      ),
                                      Text(
                                        '${this.widget.cityWeather.hourlyWeatherList[currentIndex].temperature.toStringAsFixed(2)}°',
                                        style: TextStyle(
                                          fontSize: 60,
                                          fontWeight: FontWeight.w400,
                                          color: Colors.lightBlue,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 25.0,
                                      ),
//
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                          horizontal: 16.0,
                                        ),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: <Widget>[
                                            ValueTile(
                                              label: "max",
                                              value:
                                                  '${this.widget.cityWeather.hourlyWeatherList[currentIndex].tempMax.toStringAsFixed(2)}°',
                                              isLightImage: isLightImage,
                                            ),
                                            buildSeparator(isLong: false),
                                            ValueTile(
                                              label: "min",
                                              isLightImage: isLightImage,
                                              value:
                                                  '${this.widget.cityWeather.hourlyWeatherList[currentIndex].tempMin.toStringAsFixed(2)}°',
                                            ),
                                            buildSeparator(isLong: false),
                                            ValueTile(
                                              label: "feels like",
                                              isLightImage: isLightImage,
                                              value:
                                                  '${this.widget.cityWeather.hourlyWeatherList[currentIndex].feelsLike.toStringAsFixed(2)}°',
                                            ),
                                          ],
                                        ),
                                      ),
                                      SizedBox(
                                        height: 10.0,
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              Column(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  AppBar(
                                    backgroundColor: Colors.transparent,
                                    elevation: 0.0,
                                    actions: [
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(right: 6.0),
                                        child: IconButton(
                                          icon: Icon(
                                            Icons.location_city,
                                            color: Colors.white,
                                            size: 28.0,
                                          ),
                                          onPressed: () => selectCity(),
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 40.0,
                                  ),
                                  Text(
                                    DateFormat('EEEE, d MMMM yyyy').format(
                                      widget
                                          .cityWeather
                                          .hourlyWeatherList[currentIndex]
                                          .timeStamp,
                                    ),
                                    style: TextStyle(
                                      color: isLightImage
                                          ? kBlackColor
                                          : kWhiteColor,
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10.0,
                                  ),
                                  Text(
                                    this
                                        .widget
                                        .cityWeather
                                        .cityName
                                        .toUpperCase(),
                                    style: TextStyle(
                                      fontWeight: FontWeight.w900,
                                      letterSpacing: 5,
                                      color: Colors.amber,
                                      fontSize: 25,
                                    ),
                                  ),
                                  Text(
                                    this
                                        .widget
                                        .cityWeather
                                        .countryName
                                        .toUpperCase(),
                                    style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      letterSpacing: 1.5,
                                      color: Colors.amber,
                                      fontSize: 8,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Text(
                                    this
                                        .widget
                                        .cityWeather
                                        .hourlyWeatherList[currentIndex]
                                        .description
                                        .toUpperCase(),
                                    style: TextStyle(
                                      fontWeight: FontWeight.w200,
                                      letterSpacing: 5,
                                      fontSize: 15,
                                      color: isLightImage
                                          ? kBlackColor
                                          : kWhiteColor,
                                    ),
                                  ),
                                  SizedBox(height: 10.0),
                                  Icon(
                                    widget.cityWeather
                                        .hourlyWeatherList[currentIndex]
                                        .getIconData(),
                                    color: Theme.of(context).primaryColor,
                                    size: 60,
                                  ),
                                  SizedBox(
                                    height: 30,
                                  ),
                                  Text(
                                    '${this.widget.cityWeather.hourlyWeatherList[currentIndex].temperature.toStringAsFixed(2)}°',
                                    style: TextStyle(
                                      fontSize: 60,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.lightBlue,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 25.0,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 16.0,
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: <Widget>[
                                        ValueTile(
                                          label: "max",
                                          value:
                                              '${this.widget.cityWeather.hourlyWeatherList[currentIndex].tempMax.toStringAsFixed(2)}°',
                                          isLightImage: isLightImage,
                                        ),
                                        buildSeparator(isLong: false),
                                        ValueTile(
                                          label: "min",
                                          isLightImage: isLightImage,
                                          value:
                                              '${this.widget.cityWeather.hourlyWeatherList[currentIndex].tempMin.toStringAsFixed(2)}°',
                                        ),
                                        buildSeparator(isLong: false),
                                        ValueTile(
                                          label: "feels like",
                                          isLightImage: isLightImage,
                                          value:
                                              '${this.widget.cityWeather.hourlyWeatherList[currentIndex].feelsLike.toStringAsFixed(2)}°',
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10.0,
                                  )
                                ],
                              ),
                            ],
                          ),
                          Padding(
                            child: Divider(
                              color: Colors.grey,
                              indent: 20.0,
                              endIndent: 20.0,
                            ),
                            padding: EdgeInsets.all(5),
                          ),
                          Container(
                            height: plateform == windowsPlateform ? 200 : 120.0,
                            child: ListView.separated(
                              scrollDirection: Axis.horizontal,
                              shrinkWrap: true,
                              itemCount:
                                  widget.cityWeather.hourlyWeatherList.length,
                              separatorBuilder: (context, index) => SizedBox(),
                              padding: EdgeInsets.only(left: 10, right: 10),
                              itemBuilder: (context, index) {
                                final HourlyWeather item =
                                    widget.cityWeather.hourlyWeatherList[index];
                                return HourlyWeatherTile(
                                  hourlyWeather: item,
                                  currentIndex: currentIndex,
                                  index: index,
                                  onPress: changeWeatherTime,
                                  isLightImage: isLightImage,
                                );
                              },
                            ),
                          ),
                          Padding(
                            child: Divider(
                              color: Colors.grey,
                              indent: 20.0,
                              endIndent: 20.0,
                            ),
                            padding: EdgeInsets.all(10),
                          ),
                          Container(
                            padding: EdgeInsets.symmetric(
                              horizontal: 12.0,
                            ),
                            child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  ValueTile(
                                    label: "wind speed",
                                    value:
                                        '${this.widget.cityWeather.hourlyWeatherList[currentIndex].windSpeed} m/s',
                                    iconName: 'wind',
                                    isLightImage: isLightImage,
                                  ),
                                  buildSeparator(isLong: true),
                                  ValueTile(
                                    label: "sunrise",
                                    value: DateFormat('h:mm a').format(
                                        this.widget.cityWeather.sunrise),
                                    iconName: 'sunrise',
                                    isLightImage: isLightImage,
                                  ),
                                  buildSeparator(isLong: true),
                                  ValueTile(
                                    label: "sunset",
                                    value: DateFormat('h:mm a')
                                        .format(this.widget.cityWeather.sunset),
                                    iconName: 'sunset',
                                    isLightImage: isLightImage,
                                  ),
                                  buildSeparator(isLong: true),
                                  ValueTile(
                                    label: "humidity",
                                    value:
                                        '${this.widget.cityWeather.hourlyWeatherList[currentIndex].humidity}%',
                                    iconName: 'humidity',
                                    isLightImage: isLightImage,
                                  ),
                                ]),
                          ),
                          Divider(
                            indent: 80.0,
                            height: 20.0,
                            endIndent: 80.0,
                            thickness: 0.5,
                            color:
                                Theme.of(context).accentColor.withOpacity(0.6),
                          ),
//              SizedBox(height: 20.0,),
                          Container(
                            padding: EdgeInsets.symmetric(
                              horizontal: 40.0,
                            ),
                            child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  ValueTile(
                                    label: "pressure",
                                    value:
                                        '${this.widget.cityWeather.hourlyWeatherList[currentIndex].pressure} hPa',
                                    iconName: 'p1',
                                    isLightImage: isLightImage,
                                  ),
                                  buildSeparator(isLong: true),
                                  ValueTile(
                                    label: "ground level",
                                    value:
                                        '${this.widget.cityWeather.hourlyWeatherList[currentIndex].groundLevel} hPa',
                                    iconName: 'p2',
                                    isLightImage: isLightImage,
                                  ),
                                  buildSeparator(isLong: true),
                                  ValueTile(
                                    label: "sea level",
                                    value:
                                        '${this.widget.cityWeather.hourlyWeatherList[currentIndex].seaLevel} hPa',
                                    iconName: 'p3',
                                    isLightImage: isLightImage,
                                  ),
                                ]),
                          ),
                          Padding(
                            child: Divider(
                              color: Colors.grey,
                              indent: 20.0,
                              endIndent: 20.0,
                            ),
                            padding: EdgeInsets.all(10),
                          ),
                          Container(
                            alignment: Alignment.topLeft,
                            margin: EdgeInsets.only(
                              left: 35.0,
                              bottom: 20.0,
                            ),
                            child: Text(
                              '5-Day Weather Report',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: isLightImage
                                    ? Colors.brown
                                    : Colors.blueAccent,
                                fontSize: 14.0,
                              ),
                            ),
                          ),

                          DayWeatherTile(
                            dayWeather: widget.cityWeather.dayWeatherList,
                            isLightImage: isLightImage,
                          ),

                          SizedBox(
                            height: 45.0,
                          ),
                        ],
                      ),
                    ),
                  ),
                )
              : Container(
                  color: Colors.black,
                  alignment: Alignment.center,
                  child: Column(
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
                      SizedBox(
                        height: 15.0,
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 30.0),
                        child: RaisedButton.icon(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(6.0)),
                          color: Colors.amber,
                          icon: Icon(Icons.location_city),
                          label: Text('Select New City'),
                          onPressed: () => selectCity(),
                        ),
                      ),
                    ],
                  ),
                ),
    );
  }
}
