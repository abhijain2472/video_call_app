import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:kriya/constant.dart';
import 'package:kriya/models/pickup_summary_table.dart';
import 'package:kriya/models/stack_chart_data.dart';
import 'package:kriya/screens/horizontal_stack_chart.dart';
import 'package:kriya/services/database.dart';
import 'package:kriya/widgets/pickup_table.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:charts_flutter/flutter.dart' as charts;

class HomeScreen extends StatefulWidget {
  static const routeName = '/home-screen';

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String username = '';
  String emailId = '';
  String token = '';
  SharedPreferences userStorage;
  PickupSummaryTable _pickupSummaryTable;
  List<StackChartData> _budgetOTBData = [];
  List<StackChartData> _forecastOTBData = [];

  List<charts.Series<StackChartData, String>> _stackChartDataSeries = [];

  bool isLoading = true;
  int monthLength = 12;
  int currentYear = DateTime.now().year;

  charts.Color getChartColor(Color color) {
    return charts.Color(
        r: color.red, g: color.green, b: color.blue, a: color.alpha);
  }

  void setStackChartData() {
    _budgetOTBData = [];
    _forecastOTBData = [];
    _stackChartDataSeries = [];
    _budgetOTBData = _pickupSummaryTable.strCurrentMonthAndYearStats
        .where((element) => element.yearTM == currentYear)
        .map(
          (e) => StackChartData(
            month: e.monthNameTemp,
            sales: e.budgetOTBStack,
          ),
        )
        .toList();
    _forecastOTBData = _pickupSummaryTable.strCurrentMonthAndYearStats
        .where((element) => element.yearTM == currentYear)
        .map(
          (e) => StackChartData(
            month: e.monthNameTemp,
            sales: e.foreCastOTBStack,
          ),
        )
        .toList();
    _stackChartDataSeries.add(
      charts.Series<StackChartData, String>(
        id: 'Budget',
        domainFn: (StackChartData sales, _) => sales.month,
        measureFn: (StackChartData sales, _) => sales.sales,

        data: _budgetOTBData,

        fillColorFn: (_, __) => getChartColor(Colors.lightGreen),
        colorFn: (_, __) => getChartColor(Colors.lightGreen),
      ),
    );
    _stackChartDataSeries.add(
      charts.Series<StackChartData, String>(
        id: 'Forecast',
        domainFn: (StackChartData sales, _) => sales.month,
        measureFn: (StackChartData sales, _) => sales.sales,
        data: _forecastOTBData,
        fillColorFn: (_, __) => getChartColor(Colors.blue),
        colorFn: (_, __) => getChartColor(Colors.blue),
      ),
    );
  }

  Future<void> getPickupTableDetails() async {
    _pickupSummaryTable = await DatabaseService().getPickupSummaryData();
    setStackChartData();
    setState(() {
      isLoading = false;
    });
  }

  @override
  void initState() {
    getCurrentUser();
    getPickupTableDetails();
    super.initState();
  }

  getCurrentUser() async {
    userStorage = await SharedPreferences.getInstance();
    username = userStorage.getString('userName') ?? '';
    emailId = userStorage.getString('userEmail') ?? '';
    token = userStorage.getString('token') ?? '';
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Screen'),
        actions: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: DropdownButton(
              underline: SizedBox(),
              icon: SizedBox(),
              style: TextStyle(
                color: Colors.white,
                fontSize: 16.0,
                fontWeight: FontWeight.bold,
              ),
              iconEnabledColor: Colors.white,
              dropdownColor: kHeaderColor,
              items: yearList,
              onChanged: (year) {
                setState(() {
                  currentYear = year;
                  setStackChartData();
                });
              },
              value: currentYear,
            ),
          ),
        ],
      ),
      body: isLoading
          ? Center(
              child: CircularProgressIndicator(
                valueColor: AlwaysStoppedAnimation<Color>(kDarkBlueColor),
              ),
            )
          : SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 10.0, left: 10.0),
                    height: height * 0.47,
                    child: buildPickUpTable(
                      pickupSummaryTable: _pickupSummaryTable,
                      currentYear: currentYear,
                      context: context,
                      width: width,
                    ),
                  ),
                  Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12.0)),
                    elevation: 4.0,
                    margin:
                        EdgeInsets.symmetric(horizontal: 8.0, vertical: 8.0),
                    child: Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 6.0,
                        vertical: 5.0,
                      ),
                      width: width,
                      height: height * 0.60,
                      child: StackedHorizontalBarChart(
                        seriesList: _stackChartDataSeries,
                      ),
                    ),
                  ),
                  SizedBox(height: 20.0),
                ],
              ),
            ),
    );
  }
}
