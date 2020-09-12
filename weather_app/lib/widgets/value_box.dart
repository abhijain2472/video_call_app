import 'package:flutter/material.dart';
import 'package:weather_app/utils/constant.dart';

class ValueBox extends StatelessWidget {
  final String label;
  final String value;
  final IconData iconData;
  final String condition;
  final bool isLightImage;

  ValueBox({
    this.label,
    this.value,
    this.condition,
    this.iconData,
    this.isLightImage,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          this.label,
          style: TextStyle(
            color: isLightImage ? kLightSubTextColor : kDarkSubTextColor,
          ),
          textAlign: TextAlign.center,
        ),
        SizedBox(
          height: 4.0,
        ),
        this.iconData != null
            ? Icon(
                iconData,
                color: isLightImage ? kBlackColor : kWhiteColor,
                size: 20,
              )
            : Container(),
        SizedBox(
          height: 10,
        ),
        Text(
          this.value,
          style: TextStyle(
            color: isLightImage ? kLightSubTextColor : kDarkSubTextColor,
          ),
          textAlign: TextAlign.center,
        ),
        SizedBox(
          height: 4.0,
        ),
        Text(
          this.condition,
          style: TextStyle(
            color:isLightImage?kLightSubTextColor:kDarkSubTextColor,
            fontSize: 12.0,
          ),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
