/// IsSuccess : true
/// Message : null
/// Data : {"loginUserData":{"UserID":"5aa23f77-27ea-452c-922f-14053f28e62b","UserName":"BillDaviau","DisplayName":"Bill Daviau","Password":"8xutG-pQ-IoodRuF-3FqLQ2","ClientID":"c27f4685-27c3-4884-bc76-ab0a95cc9464","RoleID":"aa2802d7-6c23-4d35-b890-83672eb19560","RoleName":"Master Admin","UserImage":"BillDaviau2014-08-30 01.22.13.jpg","EmailID":"bill@kriyarevgen.com","PhoneNumber":"3122032613","RegionIDS":null,"ConstituencyIDs":null,"LocationIDS":null},"tokendetails":{"Token":"yaiyyBGcNBmEvwmPF1x4sTedDxovHqfigocbZ5JCtm3G-5e_7_ugreU4ab1AW9jVCKmsLR0f230E-l9Tn2Ht0harCBctfT6rjs-NgU2JENSsYi7D4lCnzpB8LJh2tHJpWWz691gqOhVrZAnmMF6nXadxYroLym1hkoos4X4PGq8gbqcR7xEMLhqduQcpQ47xA6bSWxD89SzNm7BQ_rFIzQ"}}

class User {
  bool _isSuccess;
  dynamic _message;
  Data _data;

  bool get isSuccess => _isSuccess;
  dynamic get message => _message;
  Data get data => _data;

  User({
      bool isSuccess, 
      dynamic message, 
      Data data}){
    _isSuccess = isSuccess;
    _message = message;
    _data = data;
}

  User.fromJson(dynamic json) {
    _isSuccess = json["IsSuccess"];
    _message = json["Message"];
    _data = json["Data"] != null ? Data.fromJson(json["Data"]) : null;
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map["IsSuccess"] = _isSuccess;
    map["Message"] = _message;
    if (_data != null) {
      map["Data"] = _data.toJson();
    }
    return map;
  }

}

/// loginUserData : {"UserID":"5aa23f77-27ea-452c-922f-14053f28e62b","UserName":"BillDaviau","DisplayName":"Bill Daviau","Password":"8xutG-pQ-IoodRuF-3FqLQ2","ClientID":"c27f4685-27c3-4884-bc76-ab0a95cc9464","RoleID":"aa2802d7-6c23-4d35-b890-83672eb19560","RoleName":"Master Admin","UserImage":"BillDaviau2014-08-30 01.22.13.jpg","EmailID":"bill@kriyarevgen.com","PhoneNumber":"3122032613","RegionIDS":null,"ConstituencyIDs":null,"LocationIDS":null}
/// tokendetails : {"Token":"yaiyyBGcNBmEvwmPF1x4sTedDxovHqfigocbZ5JCtm3G-5e_7_ugreU4ab1AW9jVCKmsLR0f230E-l9Tn2Ht0harCBctfT6rjs-NgU2JENSsYi7D4lCnzpB8LJh2tHJpWWz691gqOhVrZAnmMF6nXadxYroLym1hkoos4X4PGq8gbqcR7xEMLhqduQcpQ47xA6bSWxD89SzNm7BQ_rFIzQ"}

class Data {
  LoginUserData _loginUserData;
  Tokendetails _tokendetails;

  LoginUserData get loginUserData => _loginUserData;
  Tokendetails get tokendetails => _tokendetails;

  Data({
      LoginUserData loginUserData, 
      Tokendetails tokendetails}){
    _loginUserData = loginUserData;
    _tokendetails = tokendetails;
}

  Data.fromJson(dynamic json) {
    _loginUserData = json["loginUserData"] != null ? LoginUserData.fromJson(json["loginUserData"]) : null;
    _tokendetails = json["tokendetails"] != null ? Tokendetails.fromJson(json["tokendetails"]) : null;
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    if (_loginUserData != null) {
      map["loginUserData"] = _loginUserData.toJson();
    }
    if (_tokendetails != null) {
      map["tokendetails"] = _tokendetails.toJson();
    }
    return map;
  }

}

/// Token : "yaiyyBGcNBmEvwmPF1x4sTedDxovHqfigocbZ5JCtm3G-5e_7_ugreU4ab1AW9jVCKmsLR0f230E-l9Tn2Ht0harCBctfT6rjs-NgU2JENSsYi7D4lCnzpB8LJh2tHJpWWz691gqOhVrZAnmMF6nXadxYroLym1hkoos4X4PGq8gbqcR7xEMLhqduQcpQ47xA6bSWxD89SzNm7BQ_rFIzQ"

class Tokendetails {
  String _token;

  String get token => _token;

  Tokendetails({
      String token}){
    _token = token;
}

  Tokendetails.fromJson(dynamic json) {
    _token = json["Token"];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map["Token"] = _token;
    return map;
  }

}

/// UserID : "5aa23f77-27ea-452c-922f-14053f28e62b"
/// UserName : "BillDaviau"
/// DisplayName : "Bill Daviau"
/// Password : "8xutG-pQ-IoodRuF-3FqLQ2"
/// ClientID : "c27f4685-27c3-4884-bc76-ab0a95cc9464"
/// RoleID : "aa2802d7-6c23-4d35-b890-83672eb19560"
/// RoleName : "Master Admin"
/// UserImage : "BillDaviau2014-08-30 01.22.13.jpg"
/// EmailID : "bill@kriyarevgen.com"
/// PhoneNumber : "3122032613"
/// RegionIDS : null
/// ConstituencyIDs : null
/// LocationIDS : null

class LoginUserData {
  String _userID;
  String _userName;
  String _displayName;
  String _password;
  String _clientID;
  String _roleID;
  String _roleName;
  String _userImage;
  String _emailID;
  String _phoneNumber;
  dynamic _regionIDS;
  dynamic _constituencyIDs;
  dynamic _locationIDS;

  String get userID => _userID;
  String get userName => _userName;
  String get displayName => _displayName;
  String get password => _password;
  String get clientID => _clientID;
  String get roleID => _roleID;
  String get roleName => _roleName;
  String get userImage => _userImage;
  String get emailID => _emailID;
  String get phoneNumber => _phoneNumber;
  dynamic get regionIDS => _regionIDS;
  dynamic get constituencyIDs => _constituencyIDs;
  dynamic get locationIDS => _locationIDS;

  LoginUserData({
      String userID, 
      String userName, 
      String displayName, 
      String password, 
      String clientID, 
      String roleID, 
      String roleName, 
      String userImage, 
      String emailID, 
      String phoneNumber, 
      dynamic regionIDS, 
      dynamic constituencyIDs, 
      dynamic locationIDS}){
    _userID = userID;
    _userName = userName;
    _displayName = displayName;
    _password = password;
    _clientID = clientID;
    _roleID = roleID;
    _roleName = roleName;
    _userImage = userImage;
    _emailID = emailID;
    _phoneNumber = phoneNumber;
    _regionIDS = regionIDS;
    _constituencyIDs = constituencyIDs;
    _locationIDS = locationIDS;
}

  LoginUserData.fromJson(dynamic json) {
    _userID = json["UserID"];
    _userName = json["UserName"];
    _displayName = json["DisplayName"];
    _password = json["Password"];
    _clientID = json["ClientID"];
    _roleID = json["RoleID"];
    _roleName = json["RoleName"];
    _userImage = json["UserImage"];
    _emailID = json["EmailID"];
    _phoneNumber = json["PhoneNumber"];
    _regionIDS = json["RegionIDS"];
    _constituencyIDs = json["ConstituencyIDs"];
    _locationIDS = json["LocationIDS"];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map["UserID"] = _userID;
    map["UserName"] = _userName;
    map["DisplayName"] = _displayName;
    map["Password"] = _password;
    map["ClientID"] = _clientID;
    map["RoleID"] = _roleID;
    map["RoleName"] = _roleName;
    map["UserImage"] = _userImage;
    map["EmailID"] = _emailID;
    map["PhoneNumber"] = _phoneNumber;
    map["RegionIDS"] = _regionIDS;
    map["ConstituencyIDs"] = _constituencyIDs;
    map["LocationIDS"] = _locationIDS;
    return map;
  }

}