import 'package:flutter/material.dart';
class TabBarItem extends StatefulWidget {
  final String name;
  bool isSelected;
  final Function onPressed;

  TabBarItem({
    this.name,
    this.isSelected,
    this.onPressed,
  });

  @override
  _TabBarItemState createState() => _TabBarItemState();
}

class _TabBarItemState extends State<TabBarItem> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: widget.onPressed,
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.symmetric(vertical: 7.0, horizontal: 10.0),
              alignment: Alignment.center,
              child: Text(
                widget.name,
                style: TextStyle(
                  fontWeight:
                  widget.isSelected ? FontWeight.bold : FontWeight.normal,
                  fontSize: 13.0,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 30.0),
              height: 2.0,
              color: widget.isSelected ? Colors.lightBlue : Colors.transparent,
            )
          ],
        ),
      ),
    );
  }
}