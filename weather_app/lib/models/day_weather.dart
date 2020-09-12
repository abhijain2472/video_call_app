import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:weather_app/utils/icondata.dart';

class DayWeather {
  final double temperature;
  final double feelsLike;
  final int pressure;
  final double tempMin;
  final String iconCode;
  final double tempMax;
  final int seaLevel;
  final int humidity;
  final int groundLevel;
  final String condition;
  final String description;
  var windSpeed;
  final int windDegree;
  final DateTime timeStamp;
  final String dayName;
  final String dayDate;

  DayWeather({
    this.temperature,
    this.feelsLike,
    this.iconCode,
    this.humidity,
    this.pressure,
    this.tempMin,
    this.tempMax,
    this.seaLevel,
    this.groundLevel,
    this.condition,
    this.description,
    this.windSpeed,
    this.windDegree,
    this.timeStamp,
    this.dayName,
    this.dayDate,
  });

  factory DayWeather.fromJson(Map<String, dynamic> data) {
    var timeStamp = DateTime.fromMillisecondsSinceEpoch((data['dt']) * 1000);
    return DayWeather(
      temperature: data['main']['temp'] - 273.15,
      feelsLike: data['main']['feels_like'] - 273.15,
      tempMax: data['main']['temp_max'] - 273.15,
      tempMin: data['main']['temp_min'] - 273.15,
      pressure: data['main']['pressure'],
      seaLevel: data['main']['sea_level'],
      humidity: data['main']['humidity'],
      groundLevel: data['main']['grnd_level'],
      windSpeed: data['wind']['speed'],
      windDegree: data['wind']['deg'],
      condition: data['weather'][0]['main'],
      description: data['weather'][0]['description'],
      iconCode: data['weather'][0]['icon'],
      timeStamp: timeStamp,
      dayName: DateFormat('EEE').format(timeStamp).toString(),
      dayDate: DateFormat('dd MMM yyyy').format(timeStamp).toString(),
    );
  }

  IconData getIconData() {
    switch (this.iconCode) {
      case '01d':
        return WeatherIcons.clear_day;
      case '01n':
        return WeatherIcons.clear_night;
      case '02d':
        return WeatherIcons.few_clouds_day;
      case '02n':
        return WeatherIcons.few_clouds_day;
      case '03d':
      case '04d':
        return WeatherIcons.clouds_day;
      case '03n':
      case '04n':
        return WeatherIcons.clear_night;
      case '09d':
        return WeatherIcons.shower_rain_day;
      case '09n':
        return WeatherIcons.shower_rain_night;
      case '10d':
        return WeatherIcons.rain_day;
      case '10n':
        return WeatherIcons.rain_night;
      case '11d':
        return WeatherIcons.thunder_storm_day;
      case '11n':
        return WeatherIcons.thunder_storm_night;
      case '13d':
        return WeatherIcons.snow_day;
      case '13n':
        return WeatherIcons.snow_night;
      case '50d':
        return WeatherIcons.mist_day;
      case '50n':
        return WeatherIcons.mist_night;
      default:
        return WeatherIcons.clear_day;
    }
  }
  getGifImage(){
    switch(this.iconCode){
      case '01d': return 'assets/images/clear_day.gif';
      case '01n': return 'assets/images/clear_night.gif';
      case '02d': return 'assets/images/few_cloud.gif';
      case '02n': return 'assets/images/few_cloud.gif';
      case '03d':
      case '04d':
        return 'assets/images/cloud_day.gif';
      case '03n':
      case '04n':
        return 'assets/images/clear_night.gif';
      case '09d': return 'assets/images/rain_shower.gif';
      case '09n': return 'assets/images/rain_shower.gif';
      case '10d': return 'assets/images/rain.gif';
      case '10n': return 'assets/images/rain.gif';
      case '11d': return 'assets/images/TS_day.gif';
      case '11n': return 'assets/images/TS_night.gif';
      case '13d': return 'assets/images/snow_day.gif';
      case '13n': return 'assets/images/snow_night.gif';
      case '50d': return 'assets/images/mist.gif';
      case '50n': return 'assets/images/mist.gif';
      default: return 'assets/images/clear_day.gif';;
    }
  }
  bool isLightImage(){
    switch(this.iconCode){
      case '01d': return true;
      case '01n': return false;
      case '02d': return true;
      case '02n': return true;
      case '03d':
      case '04d':
        return true;
      case '03n':
      case '04n':
        return false;
      case '09d': return false;
      case '09n': return false;
      case '10d': return false;
      case '10n': return false;
      case '11d': return false;
      case '11n': return false;
      case '13d': return false;
      case '13n': return false;
      case '50d': return false;
      case '50n': return false;
      default: return false;
    }
  }

}
