import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:kriya/models/pickup_summary_table.dart';
import 'package:kriya/models/user.dart';
import 'package:kriya/models/user.dart';
import 'package:http/http.dart'as http;

class DatabaseService {
  final String baseUrl = 'http://52.40.231.75/api/v1/';

  Future<User> loginUser({
    @required String userName,
    @required String password,
  }) async{
    var loginUrl='${baseUrl}login/LoginOther?Username=$userName&password=$password';
    http.Response response = await http.post(loginUrl);
    var data = jsonDecode(response.body);
    print('data is : $data');
    String result =data['Message'];
    if(result==null){
      return User.fromJson(data);
    }else{
      return null;
    }

  }
  Future<PickupSummaryTable> getPickupSummaryData()async{

    var url='${baseUrl}Snapshotmobile/GetPickupSummaryDatamobil?HotelCode=CITXG82';
    http.Response response = await http.post(url);
    var data = jsonDecode(response.body);
    bool isSuccess = data['IsSuccess'];
    if(isSuccess){
      return PickupSummaryTable.fromJson(data);
    }
    return null;

  }

}
