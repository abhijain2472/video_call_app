import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:weather_app/models/google_address.dart';
import 'package:http/http.dart' as http;

class AddressService{
  final String url ='https://maps.googleapis.com/maps/api/place/autocomplete/json?types=(cities)&key=AIzaSyCC2bnL71NDr9pPSV6iWX3Xu4rD1iMzOzs&input=';

  Future<GoogleAddress> getAddress(String query)async{
    http.Response response = await http.get(url+query);
    var data = jsonDecode(response.body);
    GoogleAddress googleAddress=GoogleAddress.fromJson(data);
    return googleAddress;
  }
}