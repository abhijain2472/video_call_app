import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:kriya/models/pickup_summary_table.dart';
import 'package:kriya/widgets/table_header.dart';

import '../constant.dart';

Widget buildPickUpTable({
  @required PickupSummaryTable pickupSummaryTable,
  @required int currentYear,
  @required BuildContext context,
  @required double width,



}) {
  return Row(
    crossAxisAlignment: CrossAxisAlignment.center,
    mainAxisSize: MainAxisSize.min,
    children: [
      Container(
          width: 80.0,
          alignment: Alignment.bottomCenter,
          child: Column(
            children: [
              SizedBox(
                height: 25.0,
              ),
              Table(
                defaultVerticalAlignment:
                TableCellVerticalAlignment.middle,
                border: TableBorder.all(
                  color: Colors.grey,
                  width: 1,
                  style: BorderStyle.solid,
                ),
                children: [
                  TableRow(
                    decoration:
                    BoxDecoration(color: kHeaderColor),
                    children: [
                      TableCell(
                        verticalAlignment:
                        TableCellVerticalAlignment.middle,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                            vertical: 6.0,
                          ),
                          child: Text(
                            'Month',
                            style: kHeaderTableStyle,
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ],
                  ),
                  ...pickupSummaryTable
                      .strCurrentMonthAndYearStats
                      .where((element) =>
                  element.yearTM == currentYear)
                      .map(
                        (element) => TableRow(
                      children: [
                        TableCell(
                          child: Padding(
                            padding: const EdgeInsets
                                .symmetric(
                              vertical: 4.0,
                            ),
                            child: Text(
                              element.monthNameTemp,
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  TableRow(
                      decoration:
                      BoxDecoration(color: kHeaderColor),
                      children: [
                        TableCell(
                          child: Padding(
                            padding:
                            const EdgeInsets.symmetric(
                                vertical: 4.0),
                            child: Text(
                              'Total',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                      ]),
                ],
              ),
            ],
          )),
      SizedBox(width: 2.0),
      Expanded(
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: [
            SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  buildHeaderContainer(
                      title: 'ON THE BOOKS',
                      context: context),
                  Container(
                    width: width * 0.70,
                    child: Table(
                      defaultVerticalAlignment:
                      TableCellVerticalAlignment.middle,
                      border: TableBorder.all(
                        color: Colors.grey,
                        width: 1,
                        style: BorderStyle.solid,
                      ),
                      children: [

                        buildTableHeader(),
                        ...pickupSummaryTable
                            .strCurrentMonthAndYearStats
                            .where((element) =>
                        element.yearTM == currentYear)
                            .map(
                              (element) =>
                              TableRow(children: [

                                TableCell(
                                  child: Padding(
                                    padding: const EdgeInsets
                                        .symmetric(
                                        vertical: 4.0),
                                    child: Text(
                                      '${element.occperc.round().toStringAsFixed(0)} %',
                                      textAlign:
                                      TextAlign.center,
                                    ),
                                  ),
                                ),
                                TableCell(
                                  child: Padding(
                                    padding: const EdgeInsets
                                        .symmetric(
                                        vertical: 4.0),
                                    child: Text(
                                      '\$ ${element.aDR.toStringAsFixed(0)}',
                                      textAlign:
                                      TextAlign.center,
                                    ),
                                  ),
                                ),
                                TableCell(
                                  child: Padding(
                                    padding: const EdgeInsets
                                        .symmetric(
                                        vertical: 4.0,
                                        horizontal: 4.0),
                                    child: Text(
                                      '\$ ${NumberFormat.decimalPattern().format(element.totalRevenue.round())}',
                                      textAlign:
                                      TextAlign.center,
                                    ),
                                  ),
                                ),
                              ]),
                        ),
                        TableRow(
                            decoration: BoxDecoration(
                                color: kHeaderColor),
                            children: [
                              TableCell(
                                child: Padding(
                                  padding: const EdgeInsets
                                      .symmetric(
                                      vertical: 4.0),
                                  child: Text(
                                    '${pickupSummaryTable.strTotCurrentMonthAndYearStats.firstWhere(
                                          (element) =>
                                      element
                                          .yearTM ==
                                          currentYear,
                                    ).availOccperc.round().toStringAsFixed(0)} %',
                                    style: kHeaderTableStyle,
                                    textAlign:
                                    TextAlign.center,
                                  ),
                                ),
                              ),
                              TableCell(
                                child: Padding(
                                  padding: const EdgeInsets
                                      .symmetric(
                                      vertical: 4.0),
                                  child: Text(
                                    '\$ ${pickupSummaryTable.strTotCurrentMonthAndYearStats.firstWhere(
                                          (element) =>
                                      element
                                          .yearTM ==
                                          currentYear,
                                    ).aDR.toStringAsFixed(0)}',
                                    style: kHeaderTableStyle,
                                    textAlign:
                                    TextAlign.center,
                                  ),
                                ),
                              ),
                              TableCell(
                                child: Padding(
                                  padding: const EdgeInsets
                                      .symmetric(
                                    vertical: 4.0,
                                  ),
                                  child: Text(
                                    '\$ ${NumberFormat.decimalPattern().format(
                                      pickupSummaryTable
                                          .strTotCurrentMonthAndYearStats
                                          .firstWhere(
                                            (element) =>
                                        element
                                            .yearTM ==
                                            currentYear,
                                      )
                                          .totalRevenue
                                          .round(),
                                    )}',
                                    style: kHeaderTableStyle,
                                    textAlign:
                                    TextAlign.center,
                                  ),
                                ),
                              ),
                            ]),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              width: 12.0,
            ),
            SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  buildHeaderContainer(
                      title: 'STLY', context: context),
                  Container(
                    width: width * 0.70,
                    child: Table(
                      defaultVerticalAlignment:
                      TableCellVerticalAlignment.middle,
                      border: TableBorder.all(
                          color: Colors.grey,
                          width: 1,
                          style: BorderStyle.solid),
                      children: [
                        buildTableHeader(),
                        ...pickupSummaryTable
                            .strCurrentMonthAndYearStats
                            .where((element) =>
                        element.yearTM == currentYear)
                            .map(
                              (element) =>
                              TableRow(children: [
                                TableCell(
                                  child: Padding(
                                    padding: const EdgeInsets
                                        .symmetric(
                                        vertical: 4.0),
                                    child: Text(
                                      '${element.occpercNetStly.round().toStringAsFixed(0)} %',
                                      textAlign:
                                      TextAlign.center,
                                    ),
                                  ),
                                ),
                                TableCell(
                                    child: Padding(
                                      padding: const EdgeInsets
                                          .symmetric(
                                          vertical: 4.0),
                                      child: Text(
                                        '\$ ${element.aDRNetStly.toStringAsFixed(0)}',
                                        textAlign:
                                        TextAlign.center,
                                      ),
                                    )),
                                TableCell(
                                  child: Padding(
                                    padding: const EdgeInsets
                                        .symmetric(
                                        vertical: 4.0,
                                        horizontal: 4.0),
                                    child: Text(
                                      '\$ ${NumberFormat.decimalPattern().format(element.totalRevenueNetStly.round())}',
                                      textAlign:
                                      TextAlign.center,
                                    ),
                                  ),
                                ),
                              ]),
                        ),
                        TableRow(
                            decoration: BoxDecoration(
                                color: kHeaderColor),
                            children: [
                              TableCell(
                                child: Padding(
                                  padding: const EdgeInsets
                                      .symmetric(
                                    vertical: 4.0,
                                  ),
                                  child: Text(
                                    '${pickupSummaryTable.strTotCurrentMonthAndYearStats.firstWhere(
                                          (element) =>
                                      element
                                          .yearTM ==
                                          currentYear,
                                    ).occPercNetStly.round().toStringAsFixed(0)} %',
                                    style: kHeaderTableStyle,
                                    textAlign:
                                    TextAlign.center,
                                  ),
                                ),
                              ),
                              TableCell(
                                child: Padding(
                                  padding: const EdgeInsets
                                      .symmetric(
                                      vertical: 4.0),
                                  child: Text(
                                    '\$ ${pickupSummaryTable.strTotCurrentMonthAndYearStats.firstWhere(
                                          (element) =>
                                      element
                                          .yearTM ==
                                          currentYear,
                                    ).aDRNetStly.toStringAsFixed(0)}',
                                    style: kHeaderTableStyle,
                                    textAlign:
                                    TextAlign.center,
                                  ),
                                ),
                              ),
                              TableCell(
                                child: Padding(
                                  padding: const EdgeInsets
                                      .symmetric(
                                    vertical: 4.0,
                                  ),
                                  child: Text(
                                    '\$ ${NumberFormat.decimalPattern().format(
                                      pickupSummaryTable
                                          .strTotCurrentMonthAndYearStats
                                          .firstWhere(
                                              (element) =>
                                          element
                                              .yearTM ==
                                              currentYear)
                                          .totalRevenueNetStly
                                          .round(),
                                    )}',
                                    style: kHeaderTableStyle,
                                    textAlign:
                                    TextAlign.center,
                                  ),
                                ),
                              ),
                            ]),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              width: 12.0,
            ),
            SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  buildHeaderContainer(
                      title: 'TOTAL LY', context: context),
                  Container(
                    width: width * 0.70,
                    child: Table(
                      defaultVerticalAlignment:
                      TableCellVerticalAlignment.middle,
                      border: TableBorder.all(
                          color: Colors.grey,
                          width: 1,
                          style: BorderStyle.solid),
                      children: [
                        buildTableHeader(),
                        ...pickupSummaryTable
                            .strCurrentMonthAndYearStats
                            .where((element) =>
                        element.yearTM == currentYear)
                            .map(
                              (element) =>
                              TableRow(children: [
                                TableCell(
                                  child: Padding(
                                    padding: const EdgeInsets
                                        .symmetric(
                                        vertical: 4.0),
                                    child: Text(
                                      '${element.lYTotalOccperc.round().toStringAsFixed(0)} %',
                                      textAlign:
                                      TextAlign.center,
                                    ),
                                  ),
                                ),
                                TableCell(
                                    child: Padding(
                                      padding: const EdgeInsets
                                          .symmetric(
                                          vertical: 4.0),
                                      child: Text(
                                        '\$ ${element.lYTotalADR.toStringAsFixed(0)}',
                                        textAlign:
                                        TextAlign.center,
                                      ),
                                    )),
                                TableCell(
                                  child: Padding(
                                    padding: const EdgeInsets
                                        .symmetric(
                                        vertical: 4.0,
                                        horizontal: 4.0),
                                    child: Text(
                                      '\$ ${NumberFormat.decimalPattern().format(
                                        element.lYTotalRevenue
                                            .round(),
                                      )}',
                                      textAlign:
                                      TextAlign.center,
                                    ),
                                  ),
                                ),
                              ]),
                        ),
                        TableRow(
                            decoration: BoxDecoration(
                                color: kHeaderColor),
                            children: [
                              TableCell(
                                child: Padding(
                                  padding: const EdgeInsets
                                      .symmetric(
                                    vertical: 4.0,
                                  ),
                                  child: Text(
                                    '${pickupSummaryTable.strTotCurrentMonthAndYearStats.firstWhere(
                                          (element) =>
                                      element
                                          .yearTM ==
                                          currentYear,
                                    ).lYTotalAvailOccperc.round().toStringAsFixed(0)} %',
                                    style: kHeaderTableStyle,
                                    textAlign:
                                    TextAlign.center,
                                  ),
                                ),
                              ),
                              TableCell(
                                child: Padding(
                                  padding: const EdgeInsets
                                      .symmetric(
                                      vertical: 4.0),
                                  child: Text(
                                    '\$ ${pickupSummaryTable.strTotCurrentMonthAndYearStats.firstWhere(
                                          (element) =>
                                      element
                                          .yearTM ==
                                          currentYear,
                                    ).lYTotalADR.toStringAsFixed(0)}',
                                    style: kHeaderTableStyle,
                                    textAlign:
                                    TextAlign.center,
                                  ),
                                ),
                              ),
                              TableCell(
                                child: Padding(
                                  padding: const EdgeInsets
                                      .symmetric(
                                    vertical: 4.0,
                                  ),
                                  child: Text(
                                    '\$ ${NumberFormat.decimalPattern().format(
                                      pickupSummaryTable
                                          .strTotCurrentMonthAndYearStats
                                          .firstWhere(
                                              (element) =>
                                          element
                                              .yearTM ==
                                              currentYear)
                                          .lYTotalRevenue
                                          .round(),
                                    )}',
                                    style: kHeaderTableStyle,
                                    textAlign:
                                    TextAlign.center,
                                  ),
                                ),
                              ),
                            ]),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              width: 12.0,
            ),
            SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  buildHeaderContainer(
                      title: 'FORECAST', context: context),
                  Container(
                    width: width * 0.70,
                    child: Table(
                      defaultVerticalAlignment:
                      TableCellVerticalAlignment.middle,
                      border: TableBorder.all(
                          color: Colors.grey,
                          width: 1,
                          style: BorderStyle.solid),
                      children: [
                        buildTableHeader(),
                        ...pickupSummaryTable
                            .strCurrentMonthAndYearStats
                            .where((element) =>
                        element.yearTM == currentYear)
                            .map(
                              (element) =>
                              TableRow(children: [
                                TableCell(
                                  child: Padding(
                                    padding: const EdgeInsets
                                        .symmetric(
                                      vertical: 4.0,
                                    ),
                                    child: Text(
                                      '${element.foreCastAvailOccperc.round().toStringAsFixed(0)} %',
                                      textAlign:
                                      TextAlign.center,
                                    ),
                                  ),
                                ),
                                TableCell(
                                    child: Padding(
                                      padding: const EdgeInsets
                                          .symmetric(
                                          vertical: 4.0),
                                      child: Text(
                                        '\$ ${element.foreCastADR.toStringAsFixed(0)}',
                                        textAlign:
                                        TextAlign.center,
                                      ),
                                    )),
                                TableCell(
                                  child: Padding(
                                    padding: const EdgeInsets
                                        .symmetric(
                                        vertical: 4.0,
                                        horizontal: 4.0),
                                    child: Text(
                                      '\$ ${NumberFormat.decimalPattern().format(
                                        element
                                            .foreCastRevenue
                                            .round(),
                                      )}',
                                      textAlign:
                                      TextAlign.center,
                                    ),
                                  ),
                                ),
                              ]),
                        ),
                        TableRow(
                            decoration: BoxDecoration(
                                color: kHeaderColor),
                            children: [
                              TableCell(
                                child: Padding(
                                  padding: const EdgeInsets
                                      .symmetric(
                                      vertical: 4.0),
                                  child: Text(
                                    '${pickupSummaryTable.strTotCurrentMonthAndYearStats.firstWhere(
                                          (element) =>
                                      element
                                          .yearTM ==
                                          currentYear,
                                    ).foreCastAvailOccperc.round().toStringAsFixed(0)} %',
                                    style: kHeaderTableStyle,
                                    textAlign:
                                    TextAlign.center,
                                  ),
                                ),
                              ),
                              TableCell(
                                child: Padding(
                                  padding: const EdgeInsets
                                      .symmetric(
                                      vertical: 4.0),
                                  child: Text(
                                    '\$ ${pickupSummaryTable.strTotCurrentMonthAndYearStats.firstWhere(
                                          (element) =>
                                      element
                                          .yearTM ==
                                          currentYear,
                                    ).foreCastADR.toStringAsFixed(0)}',
                                    style: kHeaderTableStyle,
                                    textAlign:
                                    TextAlign.center,
                                  ),
                                ),
                              ),
                              TableCell(
                                child: Padding(
                                  padding: const EdgeInsets
                                      .symmetric(
                                    vertical: 4.0,
                                  ),
                                  child: Text(
                                    '\$ ${NumberFormat.decimalPattern().format(
                                      pickupSummaryTable
                                          .strTotCurrentMonthAndYearStats
                                          .firstWhere(
                                              (element) =>
                                          element
                                              .yearTM ==
                                              currentYear)
                                          .foreCastRevenue
                                          .round(),
                                    )}',
                                    style: kHeaderTableStyle,
                                    textAlign:
                                    TextAlign.center,
                                  ),
                                ),
                              ),
                            ]),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              width: 12.0,
            ),
            SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  buildHeaderContainer(
                      title: 'BUDGET', context: context),
                  Container(
                    width: width * 0.70,
                    child: Table(
                      defaultVerticalAlignment:
                      TableCellVerticalAlignment.middle,
                      border: TableBorder.all(
                          color: Colors.grey,
                          width: 1,
                          style: BorderStyle.solid),
                      children: [
                        buildTableHeader(),
                        ...pickupSummaryTable
                            .strCurrentMonthAndYearStats
                            .where((element) =>
                        element.yearTM == currentYear)
                            .map(
                              (element) =>
                              TableRow(children: [
                                TableCell(
                                  child: Padding(
                                    padding: const EdgeInsets
                                        .symmetric(
                                      vertical: 4.0,
                                    ),
                                    child: Text(
                                      '${element.budgetOccperc.round().toStringAsFixed(0)} %',
                                      textAlign:
                                      TextAlign.center,
                                    ),
                                  ),
                                ),
                                TableCell(
                                    child: Padding(
                                      padding: const EdgeInsets
                                          .symmetric(
                                          vertical: 4.0),
                                      child: Text(
                                        '\$ ${element.budgetADR.toStringAsFixed(0)}',
                                        textAlign:
                                        TextAlign.center,
                                      ),
                                    )),
                                TableCell(
                                  child: Padding(
                                    padding: const EdgeInsets
                                        .symmetric(
                                        vertical: 4.0,
                                        horizontal: 4.0),
                                    child: Text(
                                      '\$ ${NumberFormat.decimalPattern().format(
                                        element.budgetRevenue
                                            .round(),
                                      )}',
                                      textAlign:
                                      TextAlign.center,
                                    ),
                                  ),
                                ),
                              ]),
                        ),
                        TableRow(
                          decoration: BoxDecoration(
                              color: kHeaderColor),
                          children: [
                            TableCell(
                              child: Padding(
                                padding: const EdgeInsets
                                    .symmetric(vertical: 4.0),
                                child: Text(
                                  '${pickupSummaryTable.strTotCurrentMonthAndYearStats.firstWhere(
                                        (element) =>
                                    element.yearTM ==
                                        currentYear,
                                  ).budgetAvailOccperc.round().toStringAsFixed(0)} %',
                                  style: kHeaderTableStyle,
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ),
                            TableCell(
                              child: Padding(
                                padding: const EdgeInsets
                                    .symmetric(vertical: 4.0),
                                child: Text(
                                  '\$ ${pickupSummaryTable.strTotCurrentMonthAndYearStats.firstWhere(
                                        (element) =>
                                    element.yearTM ==
                                        currentYear,
                                  ).budgetADR.toStringAsFixed(0)}',
                                  style: kHeaderTableStyle,
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ),
                            TableCell(
                              child: Padding(
                                padding: const EdgeInsets
                                    .symmetric(
                                  vertical: 4.0,
                                ),
                                child: Text(
                                  '\$ ${NumberFormat.decimalPattern().format(
                                    pickupSummaryTable
                                        .strTotCurrentMonthAndYearStats
                                        .firstWhere(
                                            (element) =>
                                        element
                                            .yearTM ==
                                            currentYear)
                                        .budgetRevenue
                                        .round(),
                                  )}',
                                  style: kHeaderTableStyle,
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    ],
  );
}
