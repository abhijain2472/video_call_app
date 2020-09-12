

class PickupSummaryTable {
  bool _isSuccess;
  dynamic _message;
  dynamic _data;
  dynamic _data1;
  dynamic _data2;
  int _errorCode;
  dynamic _strPropertyLogo;
  List<StrCurrentMonthAndYearStats> _strCurrentMonthAndYearStats;
  List<StrTotCurrentMonthAndYearStats> _strTotCurrentMonthAndYearStats;
  List<StrFromCurrentMonthAndYearStats> _strFromCurrentMonthAndYearStats;
  dynamic _strRatePlanRevenue;
  dynamic _strRatePlanRevenueLastYear;
  dynamic _strMonthlyMarketSegment;
  dynamic _strYearlyMarketSegment;
  dynamic _strMarketSegmentPickUp;
  dynamic _strMarketSegmentPickUpMarketSegment;
  dynamic _strMarketSegmentPickUpMarketSegmentADR;
  dynamic _strPricingAnalysis;
  dynamic _strPickUpRateShop;
  dynamic _strHotDates;
  List<StrTotPickupYestForecastRateShop> _strTotPickupYestForecastRateShop;
  List<StrTotMonthToDatePickupYestForecastRateShop> _strTotMonthToDatePickupYestForecastRateShop;
  dynamic _strOTBMarketSegment;
  dynamic _strCompsetRateData;
  dynamic _strStayDateLOS;
  dynamic _strCompsetRateDataYesterday;
  dynamic _strTotalOTB;
  dynamic _strTotalOTBTotal;
  dynamic _strTotalADR;
  dynamic _strTotalADRTotal;
  dynamic _strTotalRevenueTotal;
  dynamic _strPickupOTB;
  dynamic _strPickupOTBTotal;
  dynamic _strPickupADR;
  dynamic _strPickupADRTotal;
  dynamic _strPickupRevenueTotal;
  dynamic _strPickup7OTB;
  dynamic _strPickup7OTBTotal;
  dynamic _strPickup7ADR;
  dynamic _strPickup7ADRTotal;
  dynamic _strPickup7RevenueTotal;
  dynamic _strMonthYearData;
  dynamic _strMonthlySummary;
  dynamic _strDailySummary;
  dynamic _strPickupCalendarDays;
  dynamic _strPickupCalendarDates;
  dynamic _strRatePlanHierachical;
  dynamic _strCompanyHierachical;
  dynamic _strGuestNameHierachical;
  dynamic _strGroupNameDetails;
  dynamic _strEventDetails;
  dynamic _strResrevationActivityFromLastTwodays;
  bool _flagETL;
  dynamic _resrevationActivityFromLastTwodays;
  dynamic _revenueBookingYOYChart;
  dynamic _strPortfolioDetails;
  dynamic _strYesterdayTable;
  dynamic _strTodayTable;
  dynamic _strMonthMTDTable;
  dynamic _strMonthOTBTable;
  dynamic _strDailyStats;
  dynamic _strMonthlyStats;
  dynamic _strDailyStatsTotal;
  dynamic _strMonthlyStatsTotal;

  bool get isSuccess => _isSuccess;
  dynamic get message => _message;
  dynamic get data => _data;
  dynamic get data1 => _data1;
  dynamic get data2 => _data2;
  int get errorCode => _errorCode;
  dynamic get strPropertyLogo => _strPropertyLogo;
  List<StrCurrentMonthAndYearStats> get strCurrentMonthAndYearStats => _strCurrentMonthAndYearStats;
  List<StrTotCurrentMonthAndYearStats> get strTotCurrentMonthAndYearStats => _strTotCurrentMonthAndYearStats;
  List<StrFromCurrentMonthAndYearStats> get strFromCurrentMonthAndYearStats => _strFromCurrentMonthAndYearStats;
  dynamic get strRatePlanRevenue => _strRatePlanRevenue;
  dynamic get strRatePlanRevenueLastYear => _strRatePlanRevenueLastYear;
  dynamic get strMonthlyMarketSegment => _strMonthlyMarketSegment;
  dynamic get strYearlyMarketSegment => _strYearlyMarketSegment;
  dynamic get strMarketSegmentPickUp => _strMarketSegmentPickUp;
  dynamic get strMarketSegmentPickUpMarketSegment => _strMarketSegmentPickUpMarketSegment;
  dynamic get strMarketSegmentPickUpMarketSegmentADR => _strMarketSegmentPickUpMarketSegmentADR;
  dynamic get strPricingAnalysis => _strPricingAnalysis;
  dynamic get strPickUpRateShop => _strPickUpRateShop;
  dynamic get strHotDates => _strHotDates;
  List<StrTotPickupYestForecastRateShop> get strTotPickupYestForecastRateShop => _strTotPickupYestForecastRateShop;
  List<StrTotMonthToDatePickupYestForecastRateShop> get strTotMonthToDatePickupYestForecastRateShop => _strTotMonthToDatePickupYestForecastRateShop;
  dynamic get strOTBMarketSegment => _strOTBMarketSegment;
  dynamic get strCompsetRateData => _strCompsetRateData;
  dynamic get strStayDateLOS => _strStayDateLOS;
  dynamic get strCompsetRateDataYesterday => _strCompsetRateDataYesterday;
  dynamic get strTotalOTB => _strTotalOTB;
  dynamic get strTotalOTBTotal => _strTotalOTBTotal;
  dynamic get strTotalADR => _strTotalADR;
  dynamic get strTotalADRTotal => _strTotalADRTotal;
  dynamic get strTotalRevenueTotal => _strTotalRevenueTotal;
  dynamic get strPickupOTB => _strPickupOTB;
  dynamic get strPickupOTBTotal => _strPickupOTBTotal;
  dynamic get strPickupADR => _strPickupADR;
  dynamic get strPickupADRTotal => _strPickupADRTotal;
  dynamic get strPickupRevenueTotal => _strPickupRevenueTotal;
  dynamic get strPickup7OTB => _strPickup7OTB;
  dynamic get strPickup7OTBTotal => _strPickup7OTBTotal;
  dynamic get strPickup7ADR => _strPickup7ADR;
  dynamic get strPickup7ADRTotal => _strPickup7ADRTotal;
  dynamic get strPickup7RevenueTotal => _strPickup7RevenueTotal;
  dynamic get strMonthYearData => _strMonthYearData;
  dynamic get strMonthlySummary => _strMonthlySummary;
  dynamic get strDailySummary => _strDailySummary;
  dynamic get strPickupCalendarDays => _strPickupCalendarDays;
  dynamic get strPickupCalendarDates => _strPickupCalendarDates;
  dynamic get strRatePlanHierachical => _strRatePlanHierachical;
  dynamic get strCompanyHierachical => _strCompanyHierachical;
  dynamic get strGuestNameHierachical => _strGuestNameHierachical;
  dynamic get strGroupNameDetails => _strGroupNameDetails;
  dynamic get strEventDetails => _strEventDetails;
  dynamic get strResrevationActivityFromLastTwodays => _strResrevationActivityFromLastTwodays;
  bool get flagETL => _flagETL;
  dynamic get resrevationActivityFromLastTwodays => _resrevationActivityFromLastTwodays;
  dynamic get revenueBookingYOYChart => _revenueBookingYOYChart;
  dynamic get strPortfolioDetails => _strPortfolioDetails;
  dynamic get strYesterdayTable => _strYesterdayTable;
  dynamic get strTodayTable => _strTodayTable;
  dynamic get strMonthMTDTable => _strMonthMTDTable;
  dynamic get strMonthOTBTable => _strMonthOTBTable;
  dynamic get strDailyStats => _strDailyStats;
  dynamic get strMonthlyStats => _strMonthlyStats;
  dynamic get strDailyStatsTotal => _strDailyStatsTotal;
  dynamic get strMonthlyStatsTotal => _strMonthlyStatsTotal;

  PickupSummaryTable({
      bool isSuccess, 
      dynamic message, 
      dynamic data, 
      dynamic data1, 
      dynamic data2, 
      int errorCode, 
      dynamic strPropertyLogo, 
      List<StrCurrentMonthAndYearStats> strCurrentMonthAndYearStats, 
      List<StrTotCurrentMonthAndYearStats> strTotCurrentMonthAndYearStats, 
      List<StrFromCurrentMonthAndYearStats> strFromCurrentMonthAndYearStats, 
      dynamic strRatePlanRevenue, 
      dynamic strRatePlanRevenueLastYear, 
      dynamic strMonthlyMarketSegment, 
      dynamic strYearlyMarketSegment, 
      dynamic strMarketSegmentPickUp, 
      dynamic strMarketSegmentPickUpMarketSegment, 
      dynamic strMarketSegmentPickUpMarketSegmentADR, 
      dynamic strPricingAnalysis, 
      dynamic strPickUpRateShop, 
      dynamic strHotDates, 
      List<StrTotPickupYestForecastRateShop> strTotPickupYestForecastRateShop, 
      List<StrTotMonthToDatePickupYestForecastRateShop> strTotMonthToDatePickupYestForecastRateShop, 
      dynamic strOTBMarketSegment, 
      dynamic strCompsetRateData, 
      dynamic strStayDateLOS, 
      dynamic strCompsetRateDataYesterday, 
      dynamic strTotalOTB, 
      dynamic strTotalOTBTotal, 
      dynamic strTotalADR, 
      dynamic strTotalADRTotal, 
      dynamic strTotalRevenueTotal, 
      dynamic strPickupOTB, 
      dynamic strPickupOTBTotal, 
      dynamic strPickupADR, 
      dynamic strPickupADRTotal, 
      dynamic strPickupRevenueTotal, 
      dynamic strPickup7OTB, 
      dynamic strPickup7OTBTotal, 
      dynamic strPickup7ADR, 
      dynamic strPickup7ADRTotal, 
      dynamic strPickup7RevenueTotal, 
      dynamic strMonthYearData, 
      dynamic strMonthlySummary, 
      dynamic strDailySummary, 
      dynamic strPickupCalendarDays, 
      dynamic strPickupCalendarDates, 
      dynamic strRatePlanHierachical, 
      dynamic strCompanyHierachical, 
      dynamic strGuestNameHierachical, 
      dynamic strGroupNameDetails, 
      dynamic strEventDetails, 
      dynamic strResrevationActivityFromLastTwodays, 
      bool flagETL, 
      dynamic resrevationActivityFromLastTwodays, 
      dynamic revenueBookingYOYChart, 
      dynamic strPortfolioDetails, 
      dynamic strYesterdayTable, 
      dynamic strTodayTable, 
      dynamic strMonthMTDTable, 
      dynamic strMonthOTBTable, 
      dynamic strDailyStats, 
      dynamic strMonthlyStats, 
      dynamic strDailyStatsTotal, 
      dynamic strMonthlyStatsTotal}){
    _isSuccess = isSuccess;
    _message = message;
    _data = data;
    _data1 = data1;
    _data2 = data2;
    _errorCode = errorCode;
    _strPropertyLogo = strPropertyLogo;
    _strCurrentMonthAndYearStats = strCurrentMonthAndYearStats;
    _strTotCurrentMonthAndYearStats = strTotCurrentMonthAndYearStats;
    _strFromCurrentMonthAndYearStats = strFromCurrentMonthAndYearStats;
    _strRatePlanRevenue = strRatePlanRevenue;
    _strRatePlanRevenueLastYear = strRatePlanRevenueLastYear;
    _strMonthlyMarketSegment = strMonthlyMarketSegment;
    _strYearlyMarketSegment = strYearlyMarketSegment;
    _strMarketSegmentPickUp = strMarketSegmentPickUp;
    _strMarketSegmentPickUpMarketSegment = strMarketSegmentPickUpMarketSegment;
    _strMarketSegmentPickUpMarketSegmentADR = strMarketSegmentPickUpMarketSegmentADR;
    _strPricingAnalysis = strPricingAnalysis;
    _strPickUpRateShop = strPickUpRateShop;
    _strHotDates = strHotDates;
    _strTotPickupYestForecastRateShop = strTotPickupYestForecastRateShop;
    _strTotMonthToDatePickupYestForecastRateShop = strTotMonthToDatePickupYestForecastRateShop;
    _strOTBMarketSegment = strOTBMarketSegment;
    _strCompsetRateData = strCompsetRateData;
    _strStayDateLOS = strStayDateLOS;
    _strCompsetRateDataYesterday = strCompsetRateDataYesterday;
    _strTotalOTB = strTotalOTB;
    _strTotalOTBTotal = strTotalOTBTotal;
    _strTotalADR = strTotalADR;
    _strTotalADRTotal = strTotalADRTotal;
    _strTotalRevenueTotal = strTotalRevenueTotal;
    _strPickupOTB = strPickupOTB;
    _strPickupOTBTotal = strPickupOTBTotal;
    _strPickupADR = strPickupADR;
    _strPickupADRTotal = strPickupADRTotal;
    _strPickupRevenueTotal = strPickupRevenueTotal;
    _strPickup7OTB = strPickup7OTB;
    _strPickup7OTBTotal = strPickup7OTBTotal;
    _strPickup7ADR = strPickup7ADR;
    _strPickup7ADRTotal = strPickup7ADRTotal;
    _strPickup7RevenueTotal = strPickup7RevenueTotal;
    _strMonthYearData = strMonthYearData;
    _strMonthlySummary = strMonthlySummary;
    _strDailySummary = strDailySummary;
    _strPickupCalendarDays = strPickupCalendarDays;
    _strPickupCalendarDates = strPickupCalendarDates;
    _strRatePlanHierachical = strRatePlanHierachical;
    _strCompanyHierachical = strCompanyHierachical;
    _strGuestNameHierachical = strGuestNameHierachical;
    _strGroupNameDetails = strGroupNameDetails;
    _strEventDetails = strEventDetails;
    _strResrevationActivityFromLastTwodays = strResrevationActivityFromLastTwodays;
    _flagETL = flagETL;
    _resrevationActivityFromLastTwodays = resrevationActivityFromLastTwodays;
    _revenueBookingYOYChart = revenueBookingYOYChart;
    _strPortfolioDetails = strPortfolioDetails;
    _strYesterdayTable = strYesterdayTable;
    _strTodayTable = strTodayTable;
    _strMonthMTDTable = strMonthMTDTable;
    _strMonthOTBTable = strMonthOTBTable;
    _strDailyStats = strDailyStats;
    _strMonthlyStats = strMonthlyStats;
    _strDailyStatsTotal = strDailyStatsTotal;
    _strMonthlyStatsTotal = strMonthlyStatsTotal;
}

  PickupSummaryTable.fromJson(dynamic json) {
    _isSuccess = json["IsSuccess"];
    _message = json["Message"];
    _data = json["Data"];
    _data1 = json["Data1"];
    _data2 = json["Data2"];
    _errorCode = json["ErrorCode"];
    _strPropertyLogo = json["strPropertyLogo"];
    if (json["strCurrentMonthAndYearStats"] != null) {
      _strCurrentMonthAndYearStats = [];
      json["strCurrentMonthAndYearStats"].forEach((v) {
        _strCurrentMonthAndYearStats.add(StrCurrentMonthAndYearStats.fromJson(v));
      });
    }
    if (json["strTotCurrentMonthAndYearStats"] != null) {
      _strTotCurrentMonthAndYearStats = [];
      json["strTotCurrentMonthAndYearStats"].forEach((v) {
        _strTotCurrentMonthAndYearStats.add(StrTotCurrentMonthAndYearStats.fromJson(v));
      });
    }
    if (json["strFromCurrentMonthAndYearStats"] != null) {
      _strFromCurrentMonthAndYearStats = [];
      json["strFromCurrentMonthAndYearStats"].forEach((v) {
        _strFromCurrentMonthAndYearStats.add(StrFromCurrentMonthAndYearStats.fromJson(v));
      });
    }
    _strRatePlanRevenue = json["strRatePlanRevenue"];
    _strRatePlanRevenueLastYear = json["strRatePlanRevenueLastYear"];
    _strMonthlyMarketSegment = json["strMonthlyMarketSegment"];
    _strYearlyMarketSegment = json["strYearlyMarketSegment"];
    _strMarketSegmentPickUp = json["strMarketSegmentPickUp"];
    _strMarketSegmentPickUpMarketSegment = json["strMarketSegmentPickUpMarketSegment"];
    _strMarketSegmentPickUpMarketSegmentADR = json["strMarketSegmentPickUpMarketSegmentADR"];
    _strPricingAnalysis = json["strPricingAnalysis"];
    _strPickUpRateShop = json["strPickUpRateShop"];
    _strHotDates = json["strHotDates"];
    if (json["strTotPickupYestForecastRateShop"] != null) {
      _strTotPickupYestForecastRateShop = [];
      json["strTotPickupYestForecastRateShop"].forEach((v) {
        _strTotPickupYestForecastRateShop.add(StrTotPickupYestForecastRateShop.fromJson(v));
      });
    }
    if (json["strTotMonthToDatePickupYestForecastRateShop"] != null) {
      _strTotMonthToDatePickupYestForecastRateShop = [];
      json["strTotMonthToDatePickupYestForecastRateShop"].forEach((v) {
        _strTotMonthToDatePickupYestForecastRateShop.add(StrTotMonthToDatePickupYestForecastRateShop.fromJson(v));
      });
    }
    _strOTBMarketSegment = json["strOTBMarketSegment"];
    _strCompsetRateData = json["strCompsetRateData"];
    _strStayDateLOS = json["strStayDateLOS"];
    _strCompsetRateDataYesterday = json["strCompsetRateDataYesterday"];
    _strTotalOTB = json["strTotalOTB"];
    _strTotalOTBTotal = json["strTotalOTBTotal"];
    _strTotalADR = json["strTotalADR"];
    _strTotalADRTotal = json["strTotalADRTotal"];
    _strTotalRevenueTotal = json["strTotalRevenueTotal"];
    _strPickupOTB = json["strPickupOTB"];
    _strPickupOTBTotal = json["strPickupOTBTotal"];
    _strPickupADR = json["strPickupADR"];
    _strPickupADRTotal = json["strPickupADRTotal"];
    _strPickupRevenueTotal = json["strPickupRevenueTotal"];
    _strPickup7OTB = json["strPickup7OTB"];
    _strPickup7OTBTotal = json["strPickup7OTBTotal"];
    _strPickup7ADR = json["strPickup7ADR"];
    _strPickup7ADRTotal = json["strPickup7ADRTotal"];
    _strPickup7RevenueTotal = json["strPickup7RevenueTotal"];
    _strMonthYearData = json["strMonthYearData"];
    _strMonthlySummary = json["strMonthlySummary"];
    _strDailySummary = json["strDailySummary"];
    _strPickupCalendarDays = json["strPickupCalendarDays"];
    _strPickupCalendarDates = json["strPickupCalendarDates"];
    _strRatePlanHierachical = json["strRatePlanHierachical"];
    _strCompanyHierachical = json["strCompanyHierachical"];
    _strGuestNameHierachical = json["strGuestNameHierachical"];
    _strGroupNameDetails = json["strGroupNameDetails"];
    _strEventDetails = json["strEventDetails"];
    _strResrevationActivityFromLastTwodays = json["strResrevationActivityFromLastTwodays"];
    _flagETL = json["FlagETL"];
    _resrevationActivityFromLastTwodays = json["ResrevationActivityFromLastTwodays"];
    _revenueBookingYOYChart = json["RevenueBookingYOYChart"];
    _strPortfolioDetails = json["strPortfolioDetails"];
    _strYesterdayTable = json["strYesterdayTable"];
    _strTodayTable = json["strTodayTable"];
    _strMonthMTDTable = json["strMonthMTDTable"];
    _strMonthOTBTable = json["strMonthOTBTable"];
    _strDailyStats = json["strDailyStats"];
    _strMonthlyStats = json["strMonthlyStats"];
    _strDailyStatsTotal = json["strDailyStatsTotal"];
    _strMonthlyStatsTotal = json["strMonthlyStatsTotal"];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map["IsSuccess"] = _isSuccess;
    map["Message"] = _message;
    map["Data"] = _data;
    map["Data1"] = _data1;
    map["Data2"] = _data2;
    map["ErrorCode"] = _errorCode;
    map["strPropertyLogo"] = _strPropertyLogo;
    if (_strCurrentMonthAndYearStats != null) {
      map["strCurrentMonthAndYearStats"] = _strCurrentMonthAndYearStats.map((v) => v.toJson()).toList();
    }
    if (_strTotCurrentMonthAndYearStats != null) {
      map["strTotCurrentMonthAndYearStats"] = _strTotCurrentMonthAndYearStats.map((v) => v.toJson()).toList();
    }
    if (_strFromCurrentMonthAndYearStats != null) {
      map["strFromCurrentMonthAndYearStats"] = _strFromCurrentMonthAndYearStats.map((v) => v.toJson()).toList();
    }
    map["strRatePlanRevenue"] = _strRatePlanRevenue;
    map["strRatePlanRevenueLastYear"] = _strRatePlanRevenueLastYear;
    map["strMonthlyMarketSegment"] = _strMonthlyMarketSegment;
    map["strYearlyMarketSegment"] = _strYearlyMarketSegment;
    map["strMarketSegmentPickUp"] = _strMarketSegmentPickUp;
    map["strMarketSegmentPickUpMarketSegment"] = _strMarketSegmentPickUpMarketSegment;
    map["strMarketSegmentPickUpMarketSegmentADR"] = _strMarketSegmentPickUpMarketSegmentADR;
    map["strPricingAnalysis"] = _strPricingAnalysis;
    map["strPickUpRateShop"] = _strPickUpRateShop;
    map["strHotDates"] = _strHotDates;
    if (_strTotPickupYestForecastRateShop != null) {
      map["strTotPickupYestForecastRateShop"] = _strTotPickupYestForecastRateShop.map((v) => v.toJson()).toList();
    }
    if (_strTotMonthToDatePickupYestForecastRateShop != null) {
      map["strTotMonthToDatePickupYestForecastRateShop"] = _strTotMonthToDatePickupYestForecastRateShop.map((v) => v.toJson()).toList();
    }
    map["strOTBMarketSegment"] = _strOTBMarketSegment;
    map["strCompsetRateData"] = _strCompsetRateData;
    map["strStayDateLOS"] = _strStayDateLOS;
    map["strCompsetRateDataYesterday"] = _strCompsetRateDataYesterday;
    map["strTotalOTB"] = _strTotalOTB;
    map["strTotalOTBTotal"] = _strTotalOTBTotal;
    map["strTotalADR"] = _strTotalADR;
    map["strTotalADRTotal"] = _strTotalADRTotal;
    map["strTotalRevenueTotal"] = _strTotalRevenueTotal;
    map["strPickupOTB"] = _strPickupOTB;
    map["strPickupOTBTotal"] = _strPickupOTBTotal;
    map["strPickupADR"] = _strPickupADR;
    map["strPickupADRTotal"] = _strPickupADRTotal;
    map["strPickupRevenueTotal"] = _strPickupRevenueTotal;
    map["strPickup7OTB"] = _strPickup7OTB;
    map["strPickup7OTBTotal"] = _strPickup7OTBTotal;
    map["strPickup7ADR"] = _strPickup7ADR;
    map["strPickup7ADRTotal"] = _strPickup7ADRTotal;
    map["strPickup7RevenueTotal"] = _strPickup7RevenueTotal;
    map["strMonthYearData"] = _strMonthYearData;
    map["strMonthlySummary"] = _strMonthlySummary;
    map["strDailySummary"] = _strDailySummary;
    map["strPickupCalendarDays"] = _strPickupCalendarDays;
    map["strPickupCalendarDates"] = _strPickupCalendarDates;
    map["strRatePlanHierachical"] = _strRatePlanHierachical;
    map["strCompanyHierachical"] = _strCompanyHierachical;
    map["strGuestNameHierachical"] = _strGuestNameHierachical;
    map["strGroupNameDetails"] = _strGroupNameDetails;
    map["strEventDetails"] = _strEventDetails;
    map["strResrevationActivityFromLastTwodays"] = _strResrevationActivityFromLastTwodays;
    map["FlagETL"] = _flagETL;
    map["ResrevationActivityFromLastTwodays"] = _resrevationActivityFromLastTwodays;
    map["RevenueBookingYOYChart"] = _revenueBookingYOYChart;
    map["strPortfolioDetails"] = _strPortfolioDetails;
    map["strYesterdayTable"] = _strYesterdayTable;
    map["strTodayTable"] = _strTodayTable;
    map["strMonthMTDTable"] = _strMonthMTDTable;
    map["strMonthOTBTable"] = _strMonthOTBTable;
    map["strDailyStats"] = _strDailyStats;
    map["strMonthlyStats"] = _strMonthlyStats;
    map["strDailyStatsTotal"] = _strDailyStatsTotal;
    map["strMonthlyStatsTotal"] = _strMonthlyStatsTotal;
    return map;
  }

}

/// CurrentMonthName : "Jul"
/// RoomSold : 738
/// Revenue : 49350.41
/// ADR : 66.870474
/// ForeCastRoomSold : 747
/// ForeCastRevenue : 50039.13
/// RevPAR : 25.307902
/// OCCPer : 50.0
/// ForeCastRoomSoldDemand : 17.0
/// UserForecastRoomSold : 0
/// UserForecastRevenue : 0.0
/// RMSForecastRoomSold : 730
/// RMSForecastRevenue : 48849.13

class StrTotMonthToDatePickupYestForecastRateShop {
  String _currentMonthName;
  int _roomSold;
  double _revenue;
  double _aDR;
  int _foreCastRoomSold;
  double _foreCastRevenue;
  double _revPAR;
  double _oCCPer;
  double _foreCastRoomSoldDemand;
  int _userForecastRoomSold;
  double _userForecastRevenue;
  int _rMSForecastRoomSold;
  double _rMSForecastRevenue;

  String get currentMonthName => _currentMonthName;
  int get roomSold => _roomSold;
  double get revenue => _revenue;
  double get aDR => _aDR;
  int get foreCastRoomSold => _foreCastRoomSold;
  double get foreCastRevenue => _foreCastRevenue;
  double get revPAR => _revPAR;
  double get oCCPer => _oCCPer;
  double get foreCastRoomSoldDemand => _foreCastRoomSoldDemand;
  int get userForecastRoomSold => _userForecastRoomSold;
  double get userForecastRevenue => _userForecastRevenue;
  int get rMSForecastRoomSold => _rMSForecastRoomSold;
  double get rMSForecastRevenue => _rMSForecastRevenue;

  StrTotMonthToDatePickupYestForecastRateShop({
      String currentMonthName, 
      int roomSold, 
      double revenue, 
      double aDR, 
      int foreCastRoomSold, 
      double foreCastRevenue, 
      double revPAR, 
      double oCCPer, 
      double foreCastRoomSoldDemand, 
      int userForecastRoomSold, 
      double userForecastRevenue, 
      int rMSForecastRoomSold, 
      double rMSForecastRevenue}){
    _currentMonthName = currentMonthName;
    _roomSold = roomSold;
    _revenue = revenue;
    _aDR = aDR;
    _foreCastRoomSold = foreCastRoomSold;
    _foreCastRevenue = foreCastRevenue;
    _revPAR = revPAR;
    _oCCPer = oCCPer;
    _foreCastRoomSoldDemand = foreCastRoomSoldDemand;
    _userForecastRoomSold = userForecastRoomSold;
    _userForecastRevenue = userForecastRevenue;
    _rMSForecastRoomSold = rMSForecastRoomSold;
    _rMSForecastRevenue = rMSForecastRevenue;
}

  StrTotMonthToDatePickupYestForecastRateShop.fromJson(dynamic json) {
    _currentMonthName = json["CurrentMonthName"];
    _roomSold = json["RoomSold"];
    _revenue = json["Revenue"];
    _aDR = json["ADR"];
    _foreCastRoomSold = json["ForeCastRoomSold"];
    _foreCastRevenue = json["ForeCastRevenue"];
    _revPAR = json["RevPAR"];
    _oCCPer = json["OCCPer"];
    _foreCastRoomSoldDemand = json["ForeCastRoomSoldDemand"];
    _userForecastRoomSold = json["UserForecastRoomSold"];
    _userForecastRevenue = json["UserForecastRevenue"];
    _rMSForecastRoomSold = json["RMSForecastRoomSold"];
    _rMSForecastRevenue = json["RMSForecastRevenue"];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map["CurrentMonthName"] = _currentMonthName;
    map["RoomSold"] = _roomSold;
    map["Revenue"] = _revenue;
    map["ADR"] = _aDR;
    map["ForeCastRoomSold"] = _foreCastRoomSold;
    map["ForeCastRevenue"] = _foreCastRevenue;
    map["RevPAR"] = _revPAR;
    map["OCCPer"] = _oCCPer;
    map["ForeCastRoomSoldDemand"] = _foreCastRoomSoldDemand;
    map["UserForecastRoomSold"] = _userForecastRoomSold;
    map["UserForecastRevenue"] = _userForecastRevenue;
    map["RMSForecastRoomSold"] = _rMSForecastRoomSold;
    map["RMSForecastRevenue"] = _rMSForecastRevenue;
    return map;
  }

}



class StrTotPickupYestForecastRateShop {
  String _currentMonthName;
  int _roomSold;
  double _revenue;
  double _aDR;
  int _foreCastRoomSold;
  double _foreCastRevenue;
  double _revPAR;
  double _oCCPer;
  double _foreCastRoomSoldDemand;
  int _userForecastRoomSold;
  double _userForecastRevenue;
  int _rMSForecastRoomSold;
  double _rMSForecastRevenue;

  String get currentMonthName => _currentMonthName;
  int get roomSold => _roomSold;
  double get revenue => _revenue;
  double get aDR => _aDR;
  int get foreCastRoomSold => _foreCastRoomSold;
  double get foreCastRevenue => _foreCastRevenue;
  double get revPAR => _revPAR;
  double get oCCPer => _oCCPer;
  double get foreCastRoomSoldDemand => _foreCastRoomSoldDemand;
  int get userForecastRoomSold => _userForecastRoomSold;
  double get userForecastRevenue => _userForecastRevenue;
  int get rMSForecastRoomSold => _rMSForecastRoomSold;
  double get rMSForecastRevenue => _rMSForecastRevenue;

  StrTotPickupYestForecastRateShop({
      String currentMonthName, 
      int roomSold, 
      double revenue, 
      double aDR, 
      int foreCastRoomSold, 
      double foreCastRevenue, 
      double revPAR, 
      double oCCPer, 
      double foreCastRoomSoldDemand, 
      int userForecastRoomSold, 
      double userForecastRevenue, 
      int rMSForecastRoomSold, 
      double rMSForecastRevenue}){
    _currentMonthName = currentMonthName;
    _roomSold = roomSold;
    _revenue = revenue;
    _aDR = aDR;
    _foreCastRoomSold = foreCastRoomSold;
    _foreCastRevenue = foreCastRevenue;
    _revPAR = revPAR;
    _oCCPer = oCCPer;
    _foreCastRoomSoldDemand = foreCastRoomSoldDemand;
    _userForecastRoomSold = userForecastRoomSold;
    _userForecastRevenue = userForecastRevenue;
    _rMSForecastRoomSold = rMSForecastRoomSold;
    _rMSForecastRevenue = rMSForecastRevenue;
}

  StrTotPickupYestForecastRateShop.fromJson(dynamic json) {
    _currentMonthName = json["CurrentMonthName"];
    _roomSold = json["RoomSold"];
    _revenue = json["Revenue"];
    _aDR = json["ADR"];
    _foreCastRoomSold = json["ForeCastRoomSold"];
    _foreCastRevenue = json["ForeCastRevenue"];
    _revPAR = json["RevPAR"];
    _oCCPer = json["OCCPer"];
    _foreCastRoomSoldDemand = json["ForeCastRoomSoldDemand"];
    _userForecastRoomSold = json["UserForecastRoomSold"];
    _userForecastRevenue = json["UserForecastRevenue"];
    _rMSForecastRoomSold = json["RMSForecastRoomSold"];
    _rMSForecastRevenue = json["RMSForecastRevenue"];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map["CurrentMonthName"] = _currentMonthName;
    map["RoomSold"] = _roomSold;
    map["Revenue"] = _revenue;
    map["ADR"] = _aDR;
    map["ForeCastRoomSold"] = _foreCastRoomSold;
    map["ForeCastRevenue"] = _foreCastRevenue;
    map["RevPAR"] = _revPAR;
    map["OCCPer"] = _oCCPer;
    map["ForeCastRoomSoldDemand"] = _foreCastRoomSoldDemand;
    map["UserForecastRoomSold"] = _userForecastRoomSold;
    map["UserForecastRevenue"] = _userForecastRevenue;
    map["RMSForecastRoomSold"] = _rMSForecastRoomSold;
    map["RMSForecastRevenue"] = _rMSForecastRevenue;
    return map;
  }

}


class StrFromCurrentMonthAndYearStats {
  String _yearDate;
  int _yearTM;
  int _monthNo;
  String _monthNameTemp;
  int _roomSold;
  double _totalRevenue;
  double _aDR;
  double _revPAR;
  double _totalOccupancy;
  double _occperc;
  int _yestDayRoomSold;
  double _yestDayRevenue;
  double _yestDayADR;
  double _yestDayRevPAR;
  double _yestDayOccupancy;
  double _yestDayOccperc;
  int _lYTotalRoomSold;
  double _lYTotalRevenue;
  double _lYTotalADR;
  double _lYTotalRevPAR;
  double _lYTotalOccupancy;
  double _lYTotalOccperc;
  int _lYPaceRoomsSold;
  double _lYPaceRevenue;
  double _lYPaceADR;
  double _lYPaceRevPAR;
  double _lYPaceOccupancy;
  double _lYPaceOccPerc;
  double _budgetRoomSold;
  double _budgetRevenue;
  double _budgetADR;
  double _budgetRevPAR;
  double _budgetOccupancy;
  double _budgetOccperc;
  int _foreCastRoomSold;
  double _foreCastRevenue;
  double _foreCastADR;
  double _foreCastRevPAR;
  double _foreCastOccupancy;
  double _foreCastOccperc;
  int _budgetOTBStack;
  int _foreCastOTBStack;
  int _roomSoldYesterdayVar;
  double _totalRevenueYesterdayVar;
  double _aDRYesterdayVar;
  double _foreCastRevenueYesterdayVar;
  String _currentMonth;
  int _roomSoldNetStly;
  double _totalRevenueNetStly;
  double _aDRNetStly;
  double _occpercNetStly;
  int _userForecastRoomSold;
  double _userForecastRevenue;
  double _userForecastADR;
  int _rMSForecastRoomSold;
  double _rMSForecastRevenue;
  double _rMSForecastADR;
  double _userForeCastAvailOccperc;
  double _rMSForeCastAvailOccperc;

  String get yearDate => _yearDate;
  int get yearTM => _yearTM;
  int get monthNo => _monthNo;
  String get monthNameTemp => _monthNameTemp;
  int get roomSold => _roomSold;
  double get totalRevenue => _totalRevenue;
  double get aDR => _aDR;
  double get revPAR => _revPAR;
  double get totalOccupancy => _totalOccupancy;
  double get occperc => _occperc;
  int get yestDayRoomSold => _yestDayRoomSold;
  double get yestDayRevenue => _yestDayRevenue;
  double get yestDayADR => _yestDayADR;
  double get yestDayRevPAR => _yestDayRevPAR;
  double get yestDayOccupancy => _yestDayOccupancy;
  double get yestDayOccperc => _yestDayOccperc;
  int get lYTotalRoomSold => _lYTotalRoomSold;
  double get lYTotalRevenue => _lYTotalRevenue;
  double get lYTotalADR => _lYTotalADR;
  double get lYTotalRevPAR => _lYTotalRevPAR;
  double get lYTotalOccupancy => _lYTotalOccupancy;
  double get lYTotalOccperc => _lYTotalOccperc;
  int get lYPaceRoomsSold => _lYPaceRoomsSold;
  double get lYPaceRevenue => _lYPaceRevenue;
  double get lYPaceADR => _lYPaceADR;
  double get lYPaceRevPAR => _lYPaceRevPAR;
  double get lYPaceOccupancy => _lYPaceOccupancy;
  double get lYPaceOccPerc => _lYPaceOccPerc;
  double get budgetRoomSold => _budgetRoomSold;
  double get budgetRevenue => _budgetRevenue;
  double get budgetADR => _budgetADR;
  double get budgetRevPAR => _budgetRevPAR;
  double get budgetOccupancy => _budgetOccupancy;
  double get budgetOccperc => _budgetOccperc;
  int get foreCastRoomSold => _foreCastRoomSold;
  double get foreCastRevenue => _foreCastRevenue;
  double get foreCastADR => _foreCastADR;
  double get foreCastRevPAR => _foreCastRevPAR;
  double get foreCastOccupancy => _foreCastOccupancy;
  double get foreCastOccperc => _foreCastOccperc;
  int get budgetOTBStack => _budgetOTBStack;
  int get foreCastOTBStack => _foreCastOTBStack;
  int get roomSoldYesterdayVar => _roomSoldYesterdayVar;
  double get totalRevenueYesterdayVar => _totalRevenueYesterdayVar;
  double get aDRYesterdayVar => _aDRYesterdayVar;
  double get foreCastRevenueYesterdayVar => _foreCastRevenueYesterdayVar;
  String get currentMonth => _currentMonth;
  int get roomSoldNetStly => _roomSoldNetStly;
  double get totalRevenueNetStly => _totalRevenueNetStly;
  double get aDRNetStly => _aDRNetStly;
  double get occpercNetStly => _occpercNetStly;
  int get userForecastRoomSold => _userForecastRoomSold;
  double get userForecastRevenue => _userForecastRevenue;
  double get userForecastADR => _userForecastADR;
  int get rMSForecastRoomSold => _rMSForecastRoomSold;
  double get rMSForecastRevenue => _rMSForecastRevenue;
  double get rMSForecastADR => _rMSForecastADR;
  double get userForeCastAvailOccperc => _userForeCastAvailOccperc;
  double get rMSForeCastAvailOccperc => _rMSForeCastAvailOccperc;

  StrFromCurrentMonthAndYearStats({
      String yearDate, 
      int yearTM, 
      int monthNo, 
      String monthNameTemp, 
      int roomSold, 
      double totalRevenue, 
      double aDR, 
      double revPAR, 
      double totalOccupancy, 
      double occperc, 
      int yestDayRoomSold, 
      double yestDayRevenue, 
      double yestDayADR, 
      double yestDayRevPAR, 
      double yestDayOccupancy, 
      double yestDayOccperc, 
      int lYTotalRoomSold, 
      double lYTotalRevenue, 
      double lYTotalADR, 
      double lYTotalRevPAR, 
      double lYTotalOccupancy, 
      double lYTotalOccperc, 
      int lYPaceRoomsSold, 
      double lYPaceRevenue, 
      double lYPaceADR, 
      double lYPaceRevPAR, 
      double lYPaceOccupancy, 
      double lYPaceOccPerc, 
      double budgetRoomSold, 
      double budgetRevenue, 
      double budgetADR, 
      double budgetRevPAR, 
      double budgetOccupancy, 
      double budgetOccperc, 
      int foreCastRoomSold, 
      double foreCastRevenue, 
      double foreCastADR, 
      double foreCastRevPAR, 
      double foreCastOccupancy, 
      double foreCastOccperc, 
      int budgetOTBStack, 
      int foreCastOTBStack, 
      int roomSoldYesterdayVar, 
      double totalRevenueYesterdayVar, 
      double aDRYesterdayVar, 
      double foreCastRevenueYesterdayVar, 
      String currentMonth, 
      int roomSoldNetStly, 
      double totalRevenueNetStly, 
      double aDRNetStly, 
      double occpercNetStly, 
      int userForecastRoomSold, 
      double userForecastRevenue, 
      double userForecastADR, 
      int rMSForecastRoomSold, 
      double rMSForecastRevenue, 
      double rMSForecastADR, 
      double userForeCastAvailOccperc, 
      double rMSForeCastAvailOccperc}){
    _yearDate = yearDate;
    _yearTM = yearTM;
    _monthNo = monthNo;
    _monthNameTemp = monthNameTemp;
    _roomSold = roomSold;
    _totalRevenue = totalRevenue;
    _aDR = aDR;
    _revPAR = revPAR;
    _totalOccupancy = totalOccupancy;
    _occperc = occperc;
    _yestDayRoomSold = yestDayRoomSold;
    _yestDayRevenue = yestDayRevenue;
    _yestDayADR = yestDayADR;
    _yestDayRevPAR = yestDayRevPAR;
    _yestDayOccupancy = yestDayOccupancy;
    _yestDayOccperc = yestDayOccperc;
    _lYTotalRoomSold = lYTotalRoomSold;
    _lYTotalRevenue = lYTotalRevenue;
    _lYTotalADR = lYTotalADR;
    _lYTotalRevPAR = lYTotalRevPAR;
    _lYTotalOccupancy = lYTotalOccupancy;
    _lYTotalOccperc = lYTotalOccperc;
    _lYPaceRoomsSold = lYPaceRoomsSold;
    _lYPaceRevenue = lYPaceRevenue;
    _lYPaceADR = lYPaceADR;
    _lYPaceRevPAR = lYPaceRevPAR;
    _lYPaceOccupancy = lYPaceOccupancy;
    _lYPaceOccPerc = lYPaceOccPerc;
    _budgetRoomSold = budgetRoomSold;
    _budgetRevenue = budgetRevenue;
    _budgetADR = budgetADR;
    _budgetRevPAR = budgetRevPAR;
    _budgetOccupancy = budgetOccupancy;
    _budgetOccperc = budgetOccperc;
    _foreCastRoomSold = foreCastRoomSold;
    _foreCastRevenue = foreCastRevenue;
    _foreCastADR = foreCastADR;
    _foreCastRevPAR = foreCastRevPAR;
    _foreCastOccupancy = foreCastOccupancy;
    _foreCastOccperc = foreCastOccperc;
    _budgetOTBStack = budgetOTBStack;
    _foreCastOTBStack = foreCastOTBStack;
    _roomSoldYesterdayVar = roomSoldYesterdayVar;
    _totalRevenueYesterdayVar = totalRevenueYesterdayVar;
    _aDRYesterdayVar = aDRYesterdayVar;
    _foreCastRevenueYesterdayVar = foreCastRevenueYesterdayVar;
    _currentMonth = currentMonth;
    _roomSoldNetStly = roomSoldNetStly;
    _totalRevenueNetStly = totalRevenueNetStly;
    _aDRNetStly = aDRNetStly;
    _occpercNetStly = occpercNetStly;
    _userForecastRoomSold = userForecastRoomSold;
    _userForecastRevenue = userForecastRevenue;
    _userForecastADR = userForecastADR;
    _rMSForecastRoomSold = rMSForecastRoomSold;
    _rMSForecastRevenue = rMSForecastRevenue;
    _rMSForecastADR = rMSForecastADR;
    _userForeCastAvailOccperc = userForeCastAvailOccperc;
    _rMSForeCastAvailOccperc = rMSForeCastAvailOccperc;
}

  StrFromCurrentMonthAndYearStats.fromJson(dynamic json) {
    _yearDate = json["YearDate"];
    _yearTM = json["YearTM"];
    _monthNo = json["MonthNo"];
    _monthNameTemp = json["MonthNameTemp"];
    _roomSold = json["RoomSold"];
    _totalRevenue = json["TotalRevenue"];
    _aDR = json["ADR"];
    _revPAR = json["RevPAR"];
    _totalOccupancy = json["TotalOccupancy"];
    _occperc = json["Occperc"];
    _yestDayRoomSold = json["YestDayRoomSold"];
    _yestDayRevenue = json["YestDayRevenue"];
    _yestDayADR = json["YestDayADR"];
    _yestDayRevPAR = json["YestDayRevPAR"];
    _yestDayOccupancy = json["YestDayOccupancy"];
    _yestDayOccperc = json["YestDayOccperc"];
    _lYTotalRoomSold = json["LYTotalRoomSold"];
    _lYTotalRevenue = json["LYTotalRevenue"];
    _lYTotalADR = json["LYTotalADR"];
    _lYTotalRevPAR = json["LYTotalRevPAR"];
    _lYTotalOccupancy = json["LYTotalOccupancy"];
    _lYTotalOccperc = json["LYTotalOccperc"];
    _lYPaceRoomsSold = json["LYPaceRoomsSold"];
    _lYPaceRevenue = json["LYPaceRevenue"];
    _lYPaceADR = json["LYPaceADR"];
    _lYPaceRevPAR = json["LYPaceRevPAR"];
    _lYPaceOccupancy = json["LYPaceOccupancy"];
    _lYPaceOccPerc = json["LYPaceOccPerc"];
    _budgetRoomSold = json["BudgetRoomSold"];
    _budgetRevenue = json["BudgetRevenue"];
    _budgetADR = json["BudgetADR"];
    _budgetRevPAR = json["BudgetRevPAR"];
    _budgetOccupancy = json["BudgetOccupancy"];
    _budgetOccperc = json["BudgetOccperc"];
    _foreCastRoomSold = json["ForeCastRoomSold"];
    _foreCastRevenue = json["ForeCastRevenue"];
    _foreCastADR = json["ForeCastADR"];
    _foreCastRevPAR = json["ForeCastRevPAR"];
    _foreCastOccupancy = json["ForeCastOccupancy"];
    _foreCastOccperc = json["ForeCastOccperc"];
    _budgetOTBStack = json["BudgetOTBStack"];
    _foreCastOTBStack = json["ForeCastOTBStack"];
    _roomSoldYesterdayVar = json["RoomSoldYesterdayVar"];
    _totalRevenueYesterdayVar = json["TotalRevenueYesterdayVar"];
    _aDRYesterdayVar = json["ADRYesterdayVar"];
    _foreCastRevenueYesterdayVar = json["ForeCastRevenueYesterdayVar"];
    _currentMonth = json["CurrentMonth"];
    _roomSoldNetStly = json["RoomSoldNetStly"];
    _totalRevenueNetStly = json["TotalRevenueNetStly"];
    _aDRNetStly = json["ADRNetStly"];
    _occpercNetStly = json["OccpercNetStly"];
    _userForecastRoomSold = json["UserForecastRoomSold"];
    _userForecastRevenue = json["UserForecastRevenue"];
    _userForecastADR = json["UserForecastADR"];
    _rMSForecastRoomSold = json["RMSForecastRoomSold"];
    _rMSForecastRevenue = json["RMSForecastRevenue"];
    _rMSForecastADR = json["RMSForecastADR"];
    _userForeCastAvailOccperc = json["UserForeCastAvailOccperc"];
    _rMSForeCastAvailOccperc = json["RMSForeCastAvailOccperc"];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map["YearDate"] = _yearDate;
    map["YearTM"] = _yearTM;
    map["MonthNo"] = _monthNo;
    map["MonthNameTemp"] = _monthNameTemp;
    map["RoomSold"] = _roomSold;
    map["TotalRevenue"] = _totalRevenue;
    map["ADR"] = _aDR;
    map["RevPAR"] = _revPAR;
    map["TotalOccupancy"] = _totalOccupancy;
    map["Occperc"] = _occperc;
    map["YestDayRoomSold"] = _yestDayRoomSold;
    map["YestDayRevenue"] = _yestDayRevenue;
    map["YestDayADR"] = _yestDayADR;
    map["YestDayRevPAR"] = _yestDayRevPAR;
    map["YestDayOccupancy"] = _yestDayOccupancy;
    map["YestDayOccperc"] = _yestDayOccperc;
    map["LYTotalRoomSold"] = _lYTotalRoomSold;
    map["LYTotalRevenue"] = _lYTotalRevenue;
    map["LYTotalADR"] = _lYTotalADR;
    map["LYTotalRevPAR"] = _lYTotalRevPAR;
    map["LYTotalOccupancy"] = _lYTotalOccupancy;
    map["LYTotalOccperc"] = _lYTotalOccperc;
    map["LYPaceRoomsSold"] = _lYPaceRoomsSold;
    map["LYPaceRevenue"] = _lYPaceRevenue;
    map["LYPaceADR"] = _lYPaceADR;
    map["LYPaceRevPAR"] = _lYPaceRevPAR;
    map["LYPaceOccupancy"] = _lYPaceOccupancy;
    map["LYPaceOccPerc"] = _lYPaceOccPerc;
    map["BudgetRoomSold"] = _budgetRoomSold;
    map["BudgetRevenue"] = _budgetRevenue;
    map["BudgetADR"] = _budgetADR;
    map["BudgetRevPAR"] = _budgetRevPAR;
    map["BudgetOccupancy"] = _budgetOccupancy;
    map["BudgetOccperc"] = _budgetOccperc;
    map["ForeCastRoomSold"] = _foreCastRoomSold;
    map["ForeCastRevenue"] = _foreCastRevenue;
    map["ForeCastADR"] = _foreCastADR;
    map["ForeCastRevPAR"] = _foreCastRevPAR;
    map["ForeCastOccupancy"] = _foreCastOccupancy;
    map["ForeCastOccperc"] = _foreCastOccperc;
    map["BudgetOTBStack"] = _budgetOTBStack;
    map["ForeCastOTBStack"] = _foreCastOTBStack;
    map["RoomSoldYesterdayVar"] = _roomSoldYesterdayVar;
    map["TotalRevenueYesterdayVar"] = _totalRevenueYesterdayVar;
    map["ADRYesterdayVar"] = _aDRYesterdayVar;
    map["ForeCastRevenueYesterdayVar"] = _foreCastRevenueYesterdayVar;
    map["CurrentMonth"] = _currentMonth;
    map["RoomSoldNetStly"] = _roomSoldNetStly;
    map["TotalRevenueNetStly"] = _totalRevenueNetStly;
    map["ADRNetStly"] = _aDRNetStly;
    map["OccpercNetStly"] = _occpercNetStly;
    map["UserForecastRoomSold"] = _userForecastRoomSold;
    map["UserForecastRevenue"] = _userForecastRevenue;
    map["UserForecastADR"] = _userForecastADR;
    map["RMSForecastRoomSold"] = _rMSForecastRoomSold;
    map["RMSForecastRevenue"] = _rMSForecastRevenue;
    map["RMSForecastADR"] = _rMSForecastADR;
    map["UserForeCastAvailOccperc"] = _userForeCastAvailOccperc;
    map["RMSForeCastAvailOccperc"] = _rMSForeCastAvailOccperc;
    return map;
  }

}



class StrTotCurrentMonthAndYearStats {
  int _yearTM;
  int _roomSold;
  double _totalRevenue;
  double _aDR;
  double _revPAR;
  double _totalOccupancy;
  double _occperc;
  double _availOccperc;
  int _yestDayRoomSold;
  double _yestDayRevenue;
  double _yestDayADR;
  double _yestDayRevPAR;
  double _yestDayOccupancy;
  double _yestDayOccperc;
  double _yestDayAvailOccperc;
  int _lYTotalRoomSold;
  double _lYTotalRevenue;
  double _lYTotalADR;
  double _lYTotalRevPAR;
  double _lYTotalOccupancy;
  double _lYTotalOccperc;
  double _lYTotalAvailOccperc;
  int _lYPaceRoomsSold;
  double _lYPaceRevenue;
  double _lYPaceADR;
  double _lYPaceRevPAR;
  double _lYPaceOccupancy;
  double _lYPaceOccPerc;
  double _lYPaceAvailOccPerc;
  double _budgetRoomSold;
  double _budgetRevenue;
  double _budgetADR;
  double _budgetRevPAR;
  double _budgetOccupancy;
  double _budgetOccperc;
  double _budgetAvailOccperc;
  int _foreCastRoomSold;
  double _foreCastRevenue;
  double _foreCastADR;
  double _foreCastRevPAR;
  double _foreCastOccupancy;
  double _foreCastOccperc;
  double _foreCastAvailOccperc;
  int _roomSoldYesterdayVar;
  double _totalRevenueYesterdayVar;
  dynamic _aDRYesterdayVar;
  int _outOfOrder;
  int _userForecastRoomSold;
  double _userForecastRevenue;
  double _userForecastADR;
  int _rMSForecastRoomSold;
  double _rMSForecastRevenue;
  double _rMSForecastADR;
  double _rMSForeCastAvailOccperc;
  double _userForeCastAvailOccperc;
  int _yearTMNetStly;
  int _roomSoldNetStly;
  double _totalRevenueNetStly;
  double _aDRNetStly;
  double _occPercNetStly;
  int _inventoryNetStly;

  int get yearTM => _yearTM;
  int get roomSold => _roomSold;
  double get totalRevenue => _totalRevenue;
  double get aDR => _aDR;
  double get revPAR => _revPAR;
  double get totalOccupancy => _totalOccupancy;
  double get occperc => _occperc;
  double get availOccperc => _availOccperc;
  int get yestDayRoomSold => _yestDayRoomSold;
  double get yestDayRevenue => _yestDayRevenue;
  double get yestDayADR => _yestDayADR;
  double get yestDayRevPAR => _yestDayRevPAR;
  double get yestDayOccupancy => _yestDayOccupancy;
  double get yestDayOccperc => _yestDayOccperc;
  double get yestDayAvailOccperc => _yestDayAvailOccperc;
  int get lYTotalRoomSold => _lYTotalRoomSold;
  double get lYTotalRevenue => _lYTotalRevenue;
  double get lYTotalADR => _lYTotalADR;
  double get lYTotalRevPAR => _lYTotalRevPAR;
  double get lYTotalOccupancy => _lYTotalOccupancy;
  double get lYTotalOccperc => _lYTotalOccperc;
  double get lYTotalAvailOccperc => _lYTotalAvailOccperc;
  int get lYPaceRoomsSold => _lYPaceRoomsSold;
  double get lYPaceRevenue => _lYPaceRevenue;
  double get lYPaceADR => _lYPaceADR;
  double get lYPaceRevPAR => _lYPaceRevPAR;
  double get lYPaceOccupancy => _lYPaceOccupancy;
  double get lYPaceOccPerc => _lYPaceOccPerc;
  double get lYPaceAvailOccPerc => _lYPaceAvailOccPerc;
  double get budgetRoomSold => _budgetRoomSold;
  double get budgetRevenue => _budgetRevenue;
  double get budgetADR => _budgetADR;
  double get budgetRevPAR => _budgetRevPAR;
  double get budgetOccupancy => _budgetOccupancy;
  double get budgetOccperc => _budgetOccperc;
  double get budgetAvailOccperc => _budgetAvailOccperc;
  int get foreCastRoomSold => _foreCastRoomSold;
  double get foreCastRevenue => _foreCastRevenue;
  double get foreCastADR => _foreCastADR;
  double get foreCastRevPAR => _foreCastRevPAR;
  double get foreCastOccupancy => _foreCastOccupancy;
  double get foreCastOccperc => _foreCastOccperc;
  double get foreCastAvailOccperc => _foreCastAvailOccperc;
  int get roomSoldYesterdayVar => _roomSoldYesterdayVar;
  double get totalRevenueYesterdayVar => _totalRevenueYesterdayVar;
  dynamic get aDRYesterdayVar => _aDRYesterdayVar;
  int get outOfOrder => _outOfOrder;
  int get userForecastRoomSold => _userForecastRoomSold;
  double get userForecastRevenue => _userForecastRevenue;
  double get userForecastADR => _userForecastADR;
  int get rMSForecastRoomSold => _rMSForecastRoomSold;
  double get rMSForecastRevenue => _rMSForecastRevenue;
  double get rMSForecastADR => _rMSForecastADR;
  double get rMSForeCastAvailOccperc => _rMSForeCastAvailOccperc;
  double get userForeCastAvailOccperc => _userForeCastAvailOccperc;
  int get yearTMNetStly => _yearTMNetStly;
  int get roomSoldNetStly => _roomSoldNetStly;
  double get totalRevenueNetStly => _totalRevenueNetStly;
  double get aDRNetStly => _aDRNetStly;
  double get occPercNetStly => _occPercNetStly;
  int get inventoryNetStly => _inventoryNetStly;

  StrTotCurrentMonthAndYearStats({
      int yearTM, 
      int roomSold, 
      double totalRevenue, 
      double aDR, 
      double revPAR, 
      double totalOccupancy, 
      double occperc, 
      double availOccperc, 
      int yestDayRoomSold, 
      double yestDayRevenue, 
      double yestDayADR, 
      double yestDayRevPAR, 
      double yestDayOccupancy, 
      double yestDayOccperc, 
      double yestDayAvailOccperc, 
      int lYTotalRoomSold, 
      double lYTotalRevenue, 
      double lYTotalADR, 
      double lYTotalRevPAR, 
      double lYTotalOccupancy, 
      double lYTotalOccperc, 
      double lYTotalAvailOccperc, 
      int lYPaceRoomsSold, 
      double lYPaceRevenue, 
      double lYPaceADR, 
      double lYPaceRevPAR, 
      double lYPaceOccupancy, 
      double lYPaceOccPerc, 
      double lYPaceAvailOccPerc, 
      double budgetRoomSold, 
      double budgetRevenue, 
      double budgetADR, 
      double budgetRevPAR, 
      double budgetOccupancy, 
      double budgetOccperc, 
      double budgetAvailOccperc, 
      int foreCastRoomSold, 
      double foreCastRevenue, 
      double foreCastADR, 
      double foreCastRevPAR, 
      double foreCastOccupancy, 
      double foreCastOccperc, 
      double foreCastAvailOccperc, 
      int roomSoldYesterdayVar, 
      double totalRevenueYesterdayVar, 
      dynamic aDRYesterdayVar, 
      int outOfOrder, 
      int userForecastRoomSold, 
      double userForecastRevenue, 
      double userForecastADR, 
      int rMSForecastRoomSold, 
      double rMSForecastRevenue, 
      double rMSForecastADR, 
      double rMSForeCastAvailOccperc, 
      double userForeCastAvailOccperc, 
      int yearTMNetStly, 
      int roomSoldNetStly, 
      double totalRevenueNetStly, 
      double aDRNetStly, 
      double occPercNetStly, 
      int inventoryNetStly}){
    _yearTM = yearTM;
    _roomSold = roomSold;
    _totalRevenue = totalRevenue;
    _aDR = aDR;
    _revPAR = revPAR;
    _totalOccupancy = totalOccupancy;
    _occperc = occperc;
    _availOccperc = availOccperc;
    _yestDayRoomSold = yestDayRoomSold;
    _yestDayRevenue = yestDayRevenue;
    _yestDayADR = yestDayADR;
    _yestDayRevPAR = yestDayRevPAR;
    _yestDayOccupancy = yestDayOccupancy;
    _yestDayOccperc = yestDayOccperc;
    _yestDayAvailOccperc = yestDayAvailOccperc;
    _lYTotalRoomSold = lYTotalRoomSold;
    _lYTotalRevenue = lYTotalRevenue;
    _lYTotalADR = lYTotalADR;
    _lYTotalRevPAR = lYTotalRevPAR;
    _lYTotalOccupancy = lYTotalOccupancy;
    _lYTotalOccperc = lYTotalOccperc;
    _lYTotalAvailOccperc = lYTotalAvailOccperc;
    _lYPaceRoomsSold = lYPaceRoomsSold;
    _lYPaceRevenue = lYPaceRevenue;
    _lYPaceADR = lYPaceADR;
    _lYPaceRevPAR = lYPaceRevPAR;
    _lYPaceOccupancy = lYPaceOccupancy;
    _lYPaceOccPerc = lYPaceOccPerc;
    _lYPaceAvailOccPerc = lYPaceAvailOccPerc;
    _budgetRoomSold = budgetRoomSold;
    _budgetRevenue = budgetRevenue;
    _budgetADR = budgetADR;
    _budgetRevPAR = budgetRevPAR;
    _budgetOccupancy = budgetOccupancy;
    _budgetOccperc = budgetOccperc;
    _budgetAvailOccperc = budgetAvailOccperc;
    _foreCastRoomSold = foreCastRoomSold;
    _foreCastRevenue = foreCastRevenue;
    _foreCastADR = foreCastADR;
    _foreCastRevPAR = foreCastRevPAR;
    _foreCastOccupancy = foreCastOccupancy;
    _foreCastOccperc = foreCastOccperc;
    _foreCastAvailOccperc = foreCastAvailOccperc;
    _roomSoldYesterdayVar = roomSoldYesterdayVar;
    _totalRevenueYesterdayVar = totalRevenueYesterdayVar;
    _aDRYesterdayVar = aDRYesterdayVar;
    _outOfOrder = outOfOrder;
    _userForecastRoomSold = userForecastRoomSold;
    _userForecastRevenue = userForecastRevenue;
    _userForecastADR = userForecastADR;
    _rMSForecastRoomSold = rMSForecastRoomSold;
    _rMSForecastRevenue = rMSForecastRevenue;
    _rMSForecastADR = rMSForecastADR;
    _rMSForeCastAvailOccperc = rMSForeCastAvailOccperc;
    _userForeCastAvailOccperc = userForeCastAvailOccperc;
    _yearTMNetStly = yearTMNetStly;
    _roomSoldNetStly = roomSoldNetStly;
    _totalRevenueNetStly = totalRevenueNetStly;
    _aDRNetStly = aDRNetStly;
    _occPercNetStly = occPercNetStly;
    _inventoryNetStly = inventoryNetStly;
}

  StrTotCurrentMonthAndYearStats.fromJson(dynamic json) {
    _yearTM = json["YearTM"];
    _roomSold = json["RoomSold"];
    _totalRevenue = json["TotalRevenue"];
    _aDR = json["ADR"];
    _revPAR = json["RevPAR"];
    _totalOccupancy = json["TotalOccupancy"];
    _occperc = json["Occperc"];
    _availOccperc = json["AvailOccperc"];
    _yestDayRoomSold = json["YestDayRoomSold"];
    _yestDayRevenue = json["YestDayRevenue"];
    _yestDayADR = json["YestDayADR"];
    _yestDayRevPAR = json["YestDayRevPAR"];
    _yestDayOccupancy = json["YestDayOccupancy"];
    _yestDayOccperc = json["YestDayOccperc"];
    _yestDayAvailOccperc = json["YestDayAvailOccperc"];
    _lYTotalRoomSold = json["LYTotalRoomSold"];
    _lYTotalRevenue = json["LYTotalRevenue"];
    _lYTotalADR = json["LYTotalADR"];
    _lYTotalRevPAR = json["LYTotalRevPAR"];
    _lYTotalOccupancy = json["LYTotalOccupancy"];
    _lYTotalOccperc = json["LYTotalOccperc"];
    _lYTotalAvailOccperc = json["LYTotalAvailOccperc"];
    _lYPaceRoomsSold = json["LYPaceRoomsSold"];
    _lYPaceRevenue = json["LYPaceRevenue"];
    _lYPaceADR = json["LYPaceADR"];
    _lYPaceRevPAR = json["LYPaceRevPAR"];
    _lYPaceOccupancy = json["LYPaceOccupancy"];
    _lYPaceOccPerc = json["LYPaceOccPerc"];
    _lYPaceAvailOccPerc = json["LYPaceAvailOccPerc"];
    _budgetRoomSold = json["BudgetRoomSold"];
    _budgetRevenue = json["BudgetRevenue"];
    _budgetADR = json["BudgetADR"];
    _budgetRevPAR = json["BudgetRevPAR"];
    _budgetOccupancy = json["BudgetOccupancy"];
    _budgetOccperc = json["BudgetOccperc"];
    _budgetAvailOccperc = json["BudgetAvailOccperc"];
    _foreCastRoomSold = json["ForeCastRoomSold"];
    _foreCastRevenue = json["ForeCastRevenue"];
    _foreCastADR = json["ForeCastADR"];
    _foreCastRevPAR = json["ForeCastRevPAR"];
    _foreCastOccupancy = json["ForeCastOccupancy"];
    _foreCastOccperc = json["ForeCastOccperc"];
    _foreCastAvailOccperc = json["ForeCastAvailOccperc"];
    _roomSoldYesterdayVar = json["RoomSoldYesterdayVar"];
    _totalRevenueYesterdayVar = json["TotalRevenueYesterdayVar"];
    _aDRYesterdayVar = json["ADRYesterdayVar"];
    _outOfOrder = json["OutOfOrder"];
    _userForecastRoomSold = json["UserForecastRoomSold"];
    _userForecastRevenue = json["UserForecastRevenue"];
    _userForecastADR = json["UserForecastADR"];
    _rMSForecastRoomSold = json["RMSForecastRoomSold"];
    _rMSForecastRevenue = json["RMSForecastRevenue"];
    _rMSForecastADR = json["RMSForecastADR"];
    _rMSForeCastAvailOccperc = json["RMSForeCastAvailOccperc"];
    _userForeCastAvailOccperc = json["UserForeCastAvailOccperc"];
    _yearTMNetStly = json["YearTMNetStly"];
    _roomSoldNetStly = json["RoomSoldNetStly"];
    _totalRevenueNetStly = json["TotalRevenueNetStly"];
    _aDRNetStly = json["ADRNetStly"];
    _occPercNetStly = json["OccPercNetStly"];
    _inventoryNetStly = json["InventoryNetStly"];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map["YearTM"] = _yearTM;
    map["RoomSold"] = _roomSold;
    map["TotalRevenue"] = _totalRevenue;
    map["ADR"] = _aDR;
    map["RevPAR"] = _revPAR;
    map["TotalOccupancy"] = _totalOccupancy;
    map["Occperc"] = _occperc;
    map["AvailOccperc"] = _availOccperc;
    map["YestDayRoomSold"] = _yestDayRoomSold;
    map["YestDayRevenue"] = _yestDayRevenue;
    map["YestDayADR"] = _yestDayADR;
    map["YestDayRevPAR"] = _yestDayRevPAR;
    map["YestDayOccupancy"] = _yestDayOccupancy;
    map["YestDayOccperc"] = _yestDayOccperc;
    map["YestDayAvailOccperc"] = _yestDayAvailOccperc;
    map["LYTotalRoomSold"] = _lYTotalRoomSold;
    map["LYTotalRevenue"] = _lYTotalRevenue;
    map["LYTotalADR"] = _lYTotalADR;
    map["LYTotalRevPAR"] = _lYTotalRevPAR;
    map["LYTotalOccupancy"] = _lYTotalOccupancy;
    map["LYTotalOccperc"] = _lYTotalOccperc;
    map["LYTotalAvailOccperc"] = _lYTotalAvailOccperc;
    map["LYPaceRoomsSold"] = _lYPaceRoomsSold;
    map["LYPaceRevenue"] = _lYPaceRevenue;
    map["LYPaceADR"] = _lYPaceADR;
    map["LYPaceRevPAR"] = _lYPaceRevPAR;
    map["LYPaceOccupancy"] = _lYPaceOccupancy;
    map["LYPaceOccPerc"] = _lYPaceOccPerc;
    map["LYPaceAvailOccPerc"] = _lYPaceAvailOccPerc;
    map["BudgetRoomSold"] = _budgetRoomSold;
    map["BudgetRevenue"] = _budgetRevenue;
    map["BudgetADR"] = _budgetADR;
    map["BudgetRevPAR"] = _budgetRevPAR;
    map["BudgetOccupancy"] = _budgetOccupancy;
    map["BudgetOccperc"] = _budgetOccperc;
    map["BudgetAvailOccperc"] = _budgetAvailOccperc;
    map["ForeCastRoomSold"] = _foreCastRoomSold;
    map["ForeCastRevenue"] = _foreCastRevenue;
    map["ForeCastADR"] = _foreCastADR;
    map["ForeCastRevPAR"] = _foreCastRevPAR;
    map["ForeCastOccupancy"] = _foreCastOccupancy;
    map["ForeCastOccperc"] = _foreCastOccperc;
    map["ForeCastAvailOccperc"] = _foreCastAvailOccperc;
    map["RoomSoldYesterdayVar"] = _roomSoldYesterdayVar;
    map["TotalRevenueYesterdayVar"] = _totalRevenueYesterdayVar;
    map["ADRYesterdayVar"] = _aDRYesterdayVar;
    map["OutOfOrder"] = _outOfOrder;
    map["UserForecastRoomSold"] = _userForecastRoomSold;
    map["UserForecastRevenue"] = _userForecastRevenue;
    map["UserForecastADR"] = _userForecastADR;
    map["RMSForecastRoomSold"] = _rMSForecastRoomSold;
    map["RMSForecastRevenue"] = _rMSForecastRevenue;
    map["RMSForecastADR"] = _rMSForecastADR;
    map["RMSForeCastAvailOccperc"] = _rMSForeCastAvailOccperc;
    map["UserForeCastAvailOccperc"] = _userForeCastAvailOccperc;
    map["YearTMNetStly"] = _yearTMNetStly;
    map["RoomSoldNetStly"] = _roomSoldNetStly;
    map["TotalRevenueNetStly"] = _totalRevenueNetStly;
    map["ADRNetStly"] = _aDRNetStly;
    map["OccPercNetStly"] = _occPercNetStly;
    map["InventoryNetStly"] = _inventoryNetStly;
    return map;
  }

}



class StrCurrentMonthAndYearStats {
  String _yearDate;
  int _yearTM;
  int _monthNo;
  String _monthNameTemp;
  int _roomSold;
  double _totalRevenue;
  double _aDR;
  double _revPAR;
  double _totalOccupancy;
  double _occperc;
  double _availOccperc;
  int _yestDayRoomSold;
  double _yestDayRevenue;
  double _yestDayADR;
  double _yestDayRevPAR;
  double _yestDayOccupancy;
  double _yestDayOccperc;
  double _yestDayAvailOccperc;
  int _lYTotalRoomSold;
  double _lYTotalRevenue;
  double _lYTotalADR;
  double _lYTotalRevPAR;
  double _lYTotalOccupancy;
  double _lYTotalOccperc;
  double _lYTotalAvailOccperc;
  int _lYPaceRoomsSold;
  double _lYPaceRevenue;
  double _lYPaceADR;
  double _lYPaceRevPAR;
  double _lYPaceOccupancy;
  double _lYPaceOccPerc;
  double _lYPaceAvailOccPerc;
  double _budgetRoomSold;
  double _budgetRevenue;
  double _budgetADR;
  double _budgetRevPAR;
  double _budgetOccupancy;
  double _budgetOccperc;
  double _budgetAvailOccperc;
  int _foreCastRoomSold;
  double _foreCastRevenue;
  double _foreCastADR;
  double _foreCastRevPAR;
  double _foreCastOccupancy;
  double _foreCastOccperc;
  double _foreCastAvailOccperc;
  int _budgetOTBStack;
  int _foreCastOTBStack;
  int _roomSoldYesterdayVar;
  double _totalRevenueYesterdayVar;
  double _aDRYesterdayVar;
  double _foreCastRevenueYesterdayVar;
  String _currentMonth;
  int _outOfOrder;
  int _foreCastRoomsAvailability;
  int _inventory;
  int _lYTotalOutOfOrder;
  int _roomSoldNetStly;
  double _totalRevenueNetStly;
  double _aDRNetStly;
  double _occpercNetStly;
  int _userForecastRoomSold;
  double _userForecastRevenue;
  double _userForecastADR;
  int _rMSForecastRoomSold;
  double _rMSForecastRevenue;
  double _rMSForecastADR;
  double _userForeCastAvailOccperc;
  double _rMSForeCastAvailOccperc;

  String get yearDate => _yearDate;
  int get yearTM => _yearTM;
  int get monthNo => _monthNo;
  String get monthNameTemp => _monthNameTemp;
  int get roomSold => _roomSold;
  double get totalRevenue => _totalRevenue;
  double get aDR => _aDR;
  double get revPAR => _revPAR;
  double get totalOccupancy => _totalOccupancy;
  double get occperc => _occperc;
  double get availOccperc => _availOccperc;
  int get yestDayRoomSold => _yestDayRoomSold;
  double get yestDayRevenue => _yestDayRevenue;
  double get yestDayADR => _yestDayADR;
  double get yestDayRevPAR => _yestDayRevPAR;
  double get yestDayOccupancy => _yestDayOccupancy;
  double get yestDayOccperc => _yestDayOccperc;
  double get yestDayAvailOccperc => _yestDayAvailOccperc;
  int get lYTotalRoomSold => _lYTotalRoomSold;
  double get lYTotalRevenue => _lYTotalRevenue;
  double get lYTotalADR => _lYTotalADR;
  double get lYTotalRevPAR => _lYTotalRevPAR;
  double get lYTotalOccupancy => _lYTotalOccupancy;
  double get lYTotalOccperc => _lYTotalOccperc;
  double get lYTotalAvailOccperc => _lYTotalAvailOccperc;
  int get lYPaceRoomsSold => _lYPaceRoomsSold;
  double get lYPaceRevenue => _lYPaceRevenue;
  double get lYPaceADR => _lYPaceADR;
  double get lYPaceRevPAR => _lYPaceRevPAR;
  double get lYPaceOccupancy => _lYPaceOccupancy;
  double get lYPaceOccPerc => _lYPaceOccPerc;
  double get lYPaceAvailOccPerc => _lYPaceAvailOccPerc;
  double get budgetRoomSold => _budgetRoomSold;
  double get budgetRevenue => _budgetRevenue;
  double get budgetADR => _budgetADR;
  double get budgetRevPAR => _budgetRevPAR;
  double get budgetOccupancy => _budgetOccupancy;
  double get budgetOccperc => _budgetOccperc;
  double get budgetAvailOccperc => _budgetAvailOccperc;
  int get foreCastRoomSold => _foreCastRoomSold;
  double get foreCastRevenue => _foreCastRevenue;
  double get foreCastADR => _foreCastADR;
  double get foreCastRevPAR => _foreCastRevPAR;
  double get foreCastOccupancy => _foreCastOccupancy;
  double get foreCastOccperc => _foreCastOccperc;
  double get foreCastAvailOccperc => _foreCastAvailOccperc;
  int get budgetOTBStack => _budgetOTBStack;
  int get foreCastOTBStack => _foreCastOTBStack;
  int get roomSoldYesterdayVar => _roomSoldYesterdayVar;
  double get totalRevenueYesterdayVar => _totalRevenueYesterdayVar;
  double get aDRYesterdayVar => _aDRYesterdayVar;
  double get foreCastRevenueYesterdayVar => _foreCastRevenueYesterdayVar;
  String get currentMonth => _currentMonth;
  int get outOfOrder => _outOfOrder;
  int get foreCastRoomsAvailability => _foreCastRoomsAvailability;
  int get inventory => _inventory;
  int get lYTotalOutOfOrder => _lYTotalOutOfOrder;
  int get roomSoldNetStly => _roomSoldNetStly;
  double get totalRevenueNetStly => _totalRevenueNetStly;
  double get aDRNetStly => _aDRNetStly;
  double get occpercNetStly => _occpercNetStly;
  int get userForecastRoomSold => _userForecastRoomSold;
  double get userForecastRevenue => _userForecastRevenue;
  double get userForecastADR => _userForecastADR;
  int get rMSForecastRoomSold => _rMSForecastRoomSold;
  double get rMSForecastRevenue => _rMSForecastRevenue;
  double get rMSForecastADR => _rMSForecastADR;
  double get userForeCastAvailOccperc => _userForeCastAvailOccperc;
  double get rMSForeCastAvailOccperc => _rMSForeCastAvailOccperc;

  StrCurrentMonthAndYearStats({
      String yearDate, 
      int yearTM, 
      int monthNo, 
      String monthNameTemp, 
      int roomSold, 
      double totalRevenue, 
      double aDR, 
      double revPAR, 
      double totalOccupancy, 
      double occperc, 
      double availOccperc, 
      int yestDayRoomSold, 
      double yestDayRevenue, 
      double yestDayADR, 
      double yestDayRevPAR, 
      double yestDayOccupancy, 
      double yestDayOccperc, 
      double yestDayAvailOccperc, 
      int lYTotalRoomSold, 
      double lYTotalRevenue, 
      double lYTotalADR, 
      double lYTotalRevPAR, 
      double lYTotalOccupancy, 
      double lYTotalOccperc, 
      double lYTotalAvailOccperc, 
      int lYPaceRoomsSold, 
      double lYPaceRevenue, 
      double lYPaceADR, 
      double lYPaceRevPAR, 
      double lYPaceOccupancy, 
      double lYPaceOccPerc, 
      double lYPaceAvailOccPerc, 
      double budgetRoomSold, 
      double budgetRevenue, 
      double budgetADR, 
      double budgetRevPAR, 
      double budgetOccupancy, 
      double budgetOccperc, 
      double budgetAvailOccperc, 
      int foreCastRoomSold, 
      double foreCastRevenue, 
      double foreCastADR, 
      double foreCastRevPAR, 
      double foreCastOccupancy, 
      double foreCastOccperc, 
      double foreCastAvailOccperc, 
      int budgetOTBStack, 
      int foreCastOTBStack, 
      int roomSoldYesterdayVar, 
      double totalRevenueYesterdayVar, 
      double aDRYesterdayVar, 
      double foreCastRevenueYesterdayVar, 
      String currentMonth, 
      int outOfOrder, 
      int foreCastRoomsAvailability, 
      int inventory, 
      int lYTotalOutOfOrder, 
      int roomSoldNetStly, 
      double totalRevenueNetStly, 
      double aDRNetStly, 
      double occpercNetStly, 
      int userForecastRoomSold, 
      double userForecastRevenue, 
      double userForecastADR, 
      int rMSForecastRoomSold, 
      double rMSForecastRevenue, 
      double rMSForecastADR, 
      double userForeCastAvailOccperc, 
      double rMSForeCastAvailOccperc}){
    _yearDate = yearDate;
    _yearTM = yearTM;
    _monthNo = monthNo;
    _monthNameTemp = monthNameTemp;
    _roomSold = roomSold;
    _totalRevenue = totalRevenue;
    _aDR = aDR;
    _revPAR = revPAR;
    _totalOccupancy = totalOccupancy;
    _occperc = occperc;
    _availOccperc = availOccperc;
    _yestDayRoomSold = yestDayRoomSold;
    _yestDayRevenue = yestDayRevenue;
    _yestDayADR = yestDayADR;
    _yestDayRevPAR = yestDayRevPAR;
    _yestDayOccupancy = yestDayOccupancy;
    _yestDayOccperc = yestDayOccperc;
    _yestDayAvailOccperc = yestDayAvailOccperc;
    _lYTotalRoomSold = lYTotalRoomSold;
    _lYTotalRevenue = lYTotalRevenue;
    _lYTotalADR = lYTotalADR;
    _lYTotalRevPAR = lYTotalRevPAR;
    _lYTotalOccupancy = lYTotalOccupancy;
    _lYTotalOccperc = lYTotalOccperc;
    _lYTotalAvailOccperc = lYTotalAvailOccperc;
    _lYPaceRoomsSold = lYPaceRoomsSold;
    _lYPaceRevenue = lYPaceRevenue;
    _lYPaceADR = lYPaceADR;
    _lYPaceRevPAR = lYPaceRevPAR;
    _lYPaceOccupancy = lYPaceOccupancy;
    _lYPaceOccPerc = lYPaceOccPerc;
    _lYPaceAvailOccPerc = lYPaceAvailOccPerc;
    _budgetRoomSold = budgetRoomSold;
    _budgetRevenue = budgetRevenue;
    _budgetADR = budgetADR;
    _budgetRevPAR = budgetRevPAR;
    _budgetOccupancy = budgetOccupancy;
    _budgetOccperc = budgetOccperc;
    _budgetAvailOccperc = budgetAvailOccperc;
    _foreCastRoomSold = foreCastRoomSold;
    _foreCastRevenue = foreCastRevenue;
    _foreCastADR = foreCastADR;
    _foreCastRevPAR = foreCastRevPAR;
    _foreCastOccupancy = foreCastOccupancy;
    _foreCastOccperc = foreCastOccperc;
    _foreCastAvailOccperc = foreCastAvailOccperc;
    _budgetOTBStack = budgetOTBStack;
    _foreCastOTBStack = foreCastOTBStack;
    _roomSoldYesterdayVar = roomSoldYesterdayVar;
    _totalRevenueYesterdayVar = totalRevenueYesterdayVar;
    _aDRYesterdayVar = aDRYesterdayVar;
    _foreCastRevenueYesterdayVar = foreCastRevenueYesterdayVar;
    _currentMonth = currentMonth;
    _outOfOrder = outOfOrder;
    _foreCastRoomsAvailability = foreCastRoomsAvailability;
    _inventory = inventory;
    _lYTotalOutOfOrder = lYTotalOutOfOrder;
    _roomSoldNetStly = roomSoldNetStly;
    _totalRevenueNetStly = totalRevenueNetStly;
    _aDRNetStly = aDRNetStly;
    _occpercNetStly = occpercNetStly;
    _userForecastRoomSold = userForecastRoomSold;
    _userForecastRevenue = userForecastRevenue;
    _userForecastADR = userForecastADR;
    _rMSForecastRoomSold = rMSForecastRoomSold;
    _rMSForecastRevenue = rMSForecastRevenue;
    _rMSForecastADR = rMSForecastADR;
    _userForeCastAvailOccperc = userForeCastAvailOccperc;
    _rMSForeCastAvailOccperc = rMSForeCastAvailOccperc;
}

  StrCurrentMonthAndYearStats.fromJson(dynamic json) {
    _yearDate = json["YearDate"];
    _yearTM = json["YearTM"];
    _monthNo = json["MonthNo"];
    _monthNameTemp = json["MonthNameTemp"];
    _roomSold = json["RoomSold"];
    _totalRevenue = json["TotalRevenue"];
    _aDR = json["ADR"];
    _revPAR = json["RevPAR"];
    _totalOccupancy = json["TotalOccupancy"];
    _occperc = json["Occperc"];
    _availOccperc = json["AvailOccperc"];
    _yestDayRoomSold = json["YestDayRoomSold"];
    _yestDayRevenue = json["YestDayRevenue"];
    _yestDayADR = json["YestDayADR"];
    _yestDayRevPAR = json["YestDayRevPAR"];
    _yestDayOccupancy = json["YestDayOccupancy"];
    _yestDayOccperc = json["YestDayOccperc"];
    _yestDayAvailOccperc = json["YestDayAvailOccperc"];
    _lYTotalRoomSold = json["LYTotalRoomSold"];
    _lYTotalRevenue = json["LYTotalRevenue"];
    _lYTotalADR = json["LYTotalADR"];
    _lYTotalRevPAR = json["LYTotalRevPAR"];
    _lYTotalOccupancy = json["LYTotalOccupancy"];
    _lYTotalOccperc = json["LYTotalOccperc"];
    _lYTotalAvailOccperc = json["LYTotalAvailOccperc"];
    _lYPaceRoomsSold = json["LYPaceRoomsSold"];
    _lYPaceRevenue = json["LYPaceRevenue"];
    _lYPaceADR = json["LYPaceADR"];
    _lYPaceRevPAR = json["LYPaceRevPAR"];
    _lYPaceOccupancy = json["LYPaceOccupancy"];
    _lYPaceOccPerc = json["LYPaceOccPerc"];
    _lYPaceAvailOccPerc = json["LYPaceAvailOccPerc"];
    _budgetRoomSold = json["BudgetRoomSold"];
    _budgetRevenue = json["BudgetRevenue"];
    _budgetADR = json["BudgetADR"];
    _budgetRevPAR = json["BudgetRevPAR"];
    _budgetOccupancy = json["BudgetOccupancy"];
    _budgetOccperc = json["BudgetOccperc"];
    _budgetAvailOccperc = json["BudgetAvailOccperc"];
    _foreCastRoomSold = json["ForeCastRoomSold"];
    _foreCastRevenue = json["ForeCastRevenue"];
    _foreCastADR = json["ForeCastADR"];
    _foreCastRevPAR = json["ForeCastRevPAR"];
    _foreCastOccupancy = json["ForeCastOccupancy"];
    _foreCastOccperc = json["ForeCastOccperc"];
    _foreCastAvailOccperc = json["ForeCastAvailOccperc"];
    _budgetOTBStack = json["BudgetOTBStack"];
    _foreCastOTBStack = json["ForeCastOTBStack"];
    _roomSoldYesterdayVar = json["RoomSoldYesterdayVar"];
    _totalRevenueYesterdayVar = json["TotalRevenueYesterdayVar"];
    _aDRYesterdayVar = json["ADRYesterdayVar"];
    _foreCastRevenueYesterdayVar = json["ForeCastRevenueYesterdayVar"];
    _currentMonth = json["CurrentMonth"];
    _outOfOrder = json["OutOfOrder"];
    _foreCastRoomsAvailability = json["ForeCastRoomsAvailability"];
    _inventory = json["Inventory"];
    _lYTotalOutOfOrder = json["LYTotalOutOfOrder"];
    _roomSoldNetStly = json["RoomSoldNetStly"];
    _totalRevenueNetStly = json["TotalRevenueNetStly"];
    _aDRNetStly = json["ADRNetStly"];
    _occpercNetStly = json["OccpercNetStly"];
    _userForecastRoomSold = json["UserForecastRoomSold"];
    _userForecastRevenue = json["UserForecastRevenue"];
    _userForecastADR = json["UserForecastADR"];
    _rMSForecastRoomSold = json["RMSForecastRoomSold"];
    _rMSForecastRevenue = json["RMSForecastRevenue"];
    _rMSForecastADR = json["RMSForecastADR"];
    _userForeCastAvailOccperc = json["UserForeCastAvailOccperc"];
    _rMSForeCastAvailOccperc = json["RMSForeCastAvailOccperc"];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map["YearDate"] = _yearDate;
    map["YearTM"] = _yearTM;
    map["MonthNo"] = _monthNo;
    map["MonthNameTemp"] = _monthNameTemp;
    map["RoomSold"] = _roomSold;
    map["TotalRevenue"] = _totalRevenue;
    map["ADR"] = _aDR;
    map["RevPAR"] = _revPAR;
    map["TotalOccupancy"] = _totalOccupancy;
    map["Occperc"] = _occperc;
    map["AvailOccperc"] = _availOccperc;
    map["YestDayRoomSold"] = _yestDayRoomSold;
    map["YestDayRevenue"] = _yestDayRevenue;
    map["YestDayADR"] = _yestDayADR;
    map["YestDayRevPAR"] = _yestDayRevPAR;
    map["YestDayOccupancy"] = _yestDayOccupancy;
    map["YestDayOccperc"] = _yestDayOccperc;
    map["YestDayAvailOccperc"] = _yestDayAvailOccperc;
    map["LYTotalRoomSold"] = _lYTotalRoomSold;
    map["LYTotalRevenue"] = _lYTotalRevenue;
    map["LYTotalADR"] = _lYTotalADR;
    map["LYTotalRevPAR"] = _lYTotalRevPAR;
    map["LYTotalOccupancy"] = _lYTotalOccupancy;
    map["LYTotalOccperc"] = _lYTotalOccperc;
    map["LYTotalAvailOccperc"] = _lYTotalAvailOccperc;
    map["LYPaceRoomsSold"] = _lYPaceRoomsSold;
    map["LYPaceRevenue"] = _lYPaceRevenue;
    map["LYPaceADR"] = _lYPaceADR;
    map["LYPaceRevPAR"] = _lYPaceRevPAR;
    map["LYPaceOccupancy"] = _lYPaceOccupancy;
    map["LYPaceOccPerc"] = _lYPaceOccPerc;
    map["LYPaceAvailOccPerc"] = _lYPaceAvailOccPerc;
    map["BudgetRoomSold"] = _budgetRoomSold;
    map["BudgetRevenue"] = _budgetRevenue;
    map["BudgetADR"] = _budgetADR;
    map["BudgetRevPAR"] = _budgetRevPAR;
    map["BudgetOccupancy"] = _budgetOccupancy;
    map["BudgetOccperc"] = _budgetOccperc;
    map["BudgetAvailOccperc"] = _budgetAvailOccperc;
    map["ForeCastRoomSold"] = _foreCastRoomSold;
    map["ForeCastRevenue"] = _foreCastRevenue;
    map["ForeCastADR"] = _foreCastADR;
    map["ForeCastRevPAR"] = _foreCastRevPAR;
    map["ForeCastOccupancy"] = _foreCastOccupancy;
    map["ForeCastOccperc"] = _foreCastOccperc;
    map["ForeCastAvailOccperc"] = _foreCastAvailOccperc;
    map["BudgetOTBStack"] = _budgetOTBStack;
    map["ForeCastOTBStack"] = _foreCastOTBStack;
    map["RoomSoldYesterdayVar"] = _roomSoldYesterdayVar;
    map["TotalRevenueYesterdayVar"] = _totalRevenueYesterdayVar;
    map["ADRYesterdayVar"] = _aDRYesterdayVar;
    map["ForeCastRevenueYesterdayVar"] = _foreCastRevenueYesterdayVar;
    map["CurrentMonth"] = _currentMonth;
    map["OutOfOrder"] = _outOfOrder;
    map["ForeCastRoomsAvailability"] = _foreCastRoomsAvailability;
    map["Inventory"] = _inventory;
    map["LYTotalOutOfOrder"] = _lYTotalOutOfOrder;
    map["RoomSoldNetStly"] = _roomSoldNetStly;
    map["TotalRevenueNetStly"] = _totalRevenueNetStly;
    map["ADRNetStly"] = _aDRNetStly;
    map["OccpercNetStly"] = _occpercNetStly;
    map["UserForecastRoomSold"] = _userForecastRoomSold;
    map["UserForecastRevenue"] = _userForecastRevenue;
    map["UserForecastADR"] = _userForecastADR;
    map["RMSForecastRoomSold"] = _rMSForecastRoomSold;
    map["RMSForecastRevenue"] = _rMSForecastRevenue;
    map["RMSForecastADR"] = _rMSForecastADR;
    map["UserForeCastAvailOccperc"] = _userForeCastAvailOccperc;
    map["RMSForeCastAvailOccperc"] = _rMSForeCastAvailOccperc;
    return map;
  }

}