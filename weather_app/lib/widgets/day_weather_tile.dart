import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:weather_app/models/day_weather.dart';
import 'package:weather_app/utils/constant.dart';

class DayWeatherTile extends StatelessWidget {
  final List<DayWeather> dayWeather;
  final bool isLightImage;

  DayWeatherTile({
    this.dayWeather,
    this.isLightImage,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
//      padding: EdgeInsets.symmetric(horizontal: 12.0, vertical: 6.0),
      child: ListView.separated(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemCount: this.dayWeather.length,
        separatorBuilder: (context, index) => Divider(
          color: Colors.white.withOpacity(0.4),
          height: 20.0,
          indent: 25.0,
          endIndent: 25.0,
        ),
        padding: EdgeInsets.only(left: 10, right: 10),
        itemBuilder: (context, index) {
          final item = this.dayWeather[index];
          return Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                DateFormat('MMM dd').format(item.timeStamp),
                style: TextStyle(
                  color: isLightImage ? kBlackColor : kWhiteColor,
                ),
              ),
              Text(
                item.dayName,
                style: TextStyle(
                  color: isLightImage ? kBlackColor : kWhiteColor,
                ),
              ),
              Container(
                alignment: Alignment.center,
                width: 22.0,
                child: Icon(
                  item.getIconData(),
                  size: 20.0,
                  color: isLightImage ? kBlackColor : kWhiteColor,
                ),
              ),
              Text(
                item.condition,
                style: TextStyle(
                  color: isLightImage ? kBlackColor : kWhiteColor,
                ),
              ),
              Text(
                '${item.temperature.toStringAsFixed(1)}°',
                style: TextStyle(
                  color: isLightImage ? kBlackColor : kWhiteColor,
                ),
              )
            ],
          );
        },
      ),
    );
  }
}
