import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:weather_app/models/hourly_weather.dart';
import 'package:weather_app/widgets/value_box.dart';

class HourlyWeatherTile extends StatelessWidget {
  final HourlyWeather hourlyWeather;
  final currentIndex;
  final index;
  final Function onPress;
  final bool isLightImage;

  const HourlyWeatherTile({
    this.hourlyWeather,
    this.currentIndex,
    this.index,
    this.onPress,
    this.isLightImage=false,
  });

  @override
  Widget build(BuildContext context) {

    return InkWell(
      borderRadius: BorderRadius.circular(6.0),
      onTap: () => onPress(index),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(6.0),
        ),
        color: index == currentIndex
            ? (isLightImage?Colors.blueGrey.withOpacity(0.2):Colors.black.withOpacity(0.3))
            : Colors.white.withOpacity(0.2),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(6.0),
            border: Border.all(
                color: index == currentIndex
                    ? Colors.blueAccent
                    : Colors.transparent,
                width: 3.0),
          ),
          alignment: Alignment.center,
          width: MediaQuery.of(context).size.width * 0.25,
          padding: EdgeInsets.symmetric(
            vertical: 4.0,
            horizontal: 4.0,
          ),
          child: Center(
            child: ValueBox(
              label: DateFormat('E, h a').format(hourlyWeather.timeStamp),
              value: '${hourlyWeather.temperature.toStringAsFixed(2)}°',
              iconData: hourlyWeather.getIconData(),
              condition: hourlyWeather.condition,
              isLightImage: isLightImage,
            ),
          ),
        ),
      ),
    );
  }
}
