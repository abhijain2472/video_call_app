import 'package:flutter/material.dart';

import '../constant.dart';
TableRow buildTableHeader(){
  return  TableRow(
      decoration:
      BoxDecoration(color: kHeaderColor),
      children: [
        TableCell(
          verticalAlignment:
          TableCellVerticalAlignment.middle,
          child: Padding(
            padding: const EdgeInsets.symmetric(
                vertical: 6.0),
            child: Text(
              'OCC%	',
              style: kHeaderTableStyle,
              textAlign: TextAlign.center,
            ),
          ),
        ),
        TableCell(
          child: Padding(
            padding: const EdgeInsets.symmetric(
                vertical: 2.0),
            child: Text(
              'ADR	',
              style: kHeaderTableStyle,
              textAlign: TextAlign.center,
            ),
          ),
        ),
        TableCell(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 2.0,
            ),
            child: Text(
              'REV',
              style: kHeaderTableStyle,
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ]);

}
Widget buildHeaderContainer({@required String title,@required BuildContext context}){
  return Container(
    alignment: Alignment.center,
    height: 25.0,
//    padding: EdgeInsets.symmetric(vertical: 6.0),
    width: MediaQuery.of(context).size.width * 0.70,
    color: kHeaderColor,
    child: Text(
      title,
      style: TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.bold,
      ),
      textAlign: TextAlign.center,
    ),
  );
}