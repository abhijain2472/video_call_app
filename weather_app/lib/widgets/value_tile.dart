import 'package:flutter/material.dart';
import 'package:weather_app/utils/constant.dart';

class ValueTile extends StatelessWidget {
  final String label;
  final String value;
  final String iconName;
  final bool isLightImage;

  ValueTile({
    this.label,
    this.value,
    this.iconName,
    this.isLightImage=false,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[

            Text(
              this.label,
              style: TextStyle( color:isLightImage?kLightSubTextColor:kDarkSubTextColor,),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              this.value,
              style: TextStyle( color:isLightImage?kBlackColor:kWhiteColor,),
            ),
            SizedBox(height: 6.0,),
            if(iconName !=null)Image.asset(
              'assets/images/$iconName.png',
              color:isLightImage?kLightSubTextColor:kDarkSubTextColor,
              width: 20.0,
            ),
          ],
        ),
      ),
    );
  }
}
