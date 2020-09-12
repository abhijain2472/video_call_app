import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:video_call/utils/constants.dart';

class IconBox extends StatelessWidget {
  final String text;
  final IconData iconData;
  final Color color;
  final Function onPress;

  const IconBox({
    @required this.text,
    @required this.iconData,
    @required this.color,
    @required this.onPress,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: kLightBlueColor,
      elevation: 3,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(100)
      ),
      child: InkWell(
        borderRadius: BorderRadius.circular(100.0),
        onTap: onPress,
        child: Container(
          alignment: Alignment.center,
          height: 140,
          width: 140,
          padding: EdgeInsets.all(10.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                decoration: BoxDecoration(
                  color: color,
                  borderRadius: BorderRadius.circular(6.0),
                ),
                child: Container(
                  padding: EdgeInsets.all(10.0),
                  child: Icon(
                    iconData,
                    color: Colors.white,
                    size: 30.0,
                  ),
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Text(
                text,
                softWrap: true,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
