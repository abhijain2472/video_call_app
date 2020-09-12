/// predictions : [{"description":"Dubai - United Arab Emirates","matched_substrings":[{"length":1,"offset":0}],"place_id":"ChIJRcbZaklDXz4RYlEphFBu5r0","reference":"ChIJRcbZaklDXz4RYlEphFBu5r0","structured_formatting":{"main_text":"Dubai","main_text_matched_substrings":[{"length":1,"offset":0}],"secondary_text":"United Arab Emirates"},"terms":[{"offset":0,"value":"Dubai"},{"offset":8,"value":"United Arab Emirates"}],"types":["locality","political","geocode"]},{"description":"Denver, CO, USA","matched_substrings":[{"length":1,"offset":0}],"place_id":"ChIJzxcfI6qAa4cR1jaKJ_j0jhE","reference":"ChIJzxcfI6qAa4cR1jaKJ_j0jhE","structured_formatting":{"main_text":"Denver","main_text_matched_substrings":[{"length":1,"offset":0}],"secondary_text":"CO, USA"},"terms":[{"offset":0,"value":"Denver"},{"offset":8,"value":"CO"},{"offset":12,"value":"USA"}],"types":["locality","political","geocode"]},{"description":"Dallas, TX, USA","matched_substrings":[{"length":1,"offset":0}],"place_id":"ChIJS5dFe_cZTIYRj2dH9qSb7Lk","reference":"ChIJS5dFe_cZTIYRj2dH9qSb7Lk","structured_formatting":{"main_text":"Dallas","main_text_matched_substrings":[{"length":1,"offset":0}],"secondary_text":"TX, USA"},"terms":[{"offset":0,"value":"Dallas"},{"offset":8,"value":"TX"},{"offset":12,"value":"USA"}],"types":["locality","political","geocode"]},{"description":"Düsseldorf, Germany","matched_substrings":[{"length":1,"offset":0}],"place_id":"ChIJB1lG8XvJuEcRsHMqSvxgJwQ","reference":"ChIJB1lG8XvJuEcRsHMqSvxgJwQ","structured_formatting":{"main_text":"Düsseldorf","main_text_matched_substrings":[{"length":1,"offset":0}],"secondary_text":"Germany"},"terms":[{"offset":0,"value":"Düsseldorf"},{"offset":12,"value":"Germany"}],"types":["locality","political","geocode"]},{"description":"Dresden, Germany","matched_substrings":[{"length":1,"offset":0}],"place_id":"ChIJqdYaECnPCUcRsP6IQsuxIQQ","reference":"ChIJqdYaECnPCUcRsP6IQsuxIQQ","structured_formatting":{"main_text":"Dresden","main_text_matched_substrings":[{"length":1,"offset":0}],"secondary_text":"Germany"},"terms":[{"offset":0,"value":"Dresden"},{"offset":9,"value":"Germany"}],"types":["locality","political","geocode"]}]
/// status : "OK"

class GoogleAddress {
  List<Predictions> _predictions;
  String _status;

  List<Predictions> get predictions => _predictions;
  String get status => _status;

  GoogleAddress({
      List<Predictions> predictions, 
      String status}){
    _predictions = predictions;
    _status = status;
}

  GoogleAddress.fromJson(dynamic json) {
    if (json["predictions"] != null) {
      _predictions = [];
      json["predictions"].forEach((v) {
        _predictions.add(Predictions.fromJson(v));
      });
    }
    _status = json["status"];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    if (_predictions != null) {
      map["predictions"] = _predictions.map((v) => v.toJson()).toList();
    }
    map["status"] = _status;
    return map;
  }

}

/// description : "Dubai - United Arab Emirates"
/// matched_substrings : [{"length":1,"offset":0}]
/// place_id : "ChIJRcbZaklDXz4RYlEphFBu5r0"
/// reference : "ChIJRcbZaklDXz4RYlEphFBu5r0"
/// structured_formatting : {"main_text":"Dubai","main_text_matched_substrings":[{"length":1,"offset":0}],"secondary_text":"United Arab Emirates"}
/// terms : [{"offset":0,"value":"Dubai"},{"offset":8,"value":"United Arab Emirates"}]
/// types : ["locality","political","geocode"]

class Predictions {
  String _description;
  List<Matched_substrings> _matchedSubstrings;
  String _placeId;
  String _reference;
  Structured_formatting _structuredFormatting;
  List<Terms> _terms;
  List<String> _types;

  String get description => _description;
  List<Matched_substrings> get matchedSubstrings => _matchedSubstrings;
  String get placeId => _placeId;
  String get reference => _reference;
  Structured_formatting get structuredFormatting => _structuredFormatting;
  List<Terms> get terms => _terms;
  List<String> get types => _types;

  Predictions({
      String description, 
      List<Matched_substrings> matchedSubstrings, 
      String placeId, 
      String reference, 
      Structured_formatting structuredFormatting, 
      List<Terms> terms, 
      List<String> types}){
    _description = description;
    _matchedSubstrings = matchedSubstrings;
    _placeId = placeId;
    _reference = reference;
    _structuredFormatting = structuredFormatting;
    _terms = terms;
    _types = types;
}

  Predictions.fromJson(dynamic json) {
    _description = json["description"];
    if (json["matchedSubstrings"] != null) {
      _matchedSubstrings = [];
      json["matchedSubstrings"].forEach((v) {
        _matchedSubstrings.add(Matched_substrings.fromJson(v));
      });
    }
    _placeId = json["placeId"];
    _reference = json["reference"];
    _structuredFormatting = json["structuredFormatting"] != null ? Structured_formatting.fromJson(json["structuredFormatting"]) : null;
    if (json["terms"] != null) {
      _terms = [];
      json["terms"].forEach((v) {
        _terms.add(Terms.fromJson(v));
      });
    }
    _types = json["types"] != null ? json["types"].cast<String>() : [];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map["description"] = _description;
    if (_matchedSubstrings != null) {
      map["matchedSubstrings"] = _matchedSubstrings.map((v) => v.toJson()).toList();
    }
    map["placeId"] = _placeId;
    map["reference"] = _reference;
    if (_structuredFormatting != null) {
      map["structuredFormatting"] = _structuredFormatting.toJson();
    }
    if (_terms != null) {
      map["terms"] = _terms.map((v) => v.toJson()).toList();
    }
    map["types"] = _types;
    return map;
  }

}

/// offset : 0
/// value : "Dubai"

class Terms {
  int _offset;
  String _value;

  int get offset => _offset;
  String get value => _value;

  Terms({
      int offset, 
      String value}){
    _offset = offset;
    _value = value;
}

  Terms.fromJson(dynamic json) {
    _offset = json["offset"];
    _value = json["value"];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map["offset"] = _offset;
    map["value"] = _value;
    return map;
  }

}

/// main_text : "Dubai"
/// main_text_matched_substrings : [{"length":1,"offset":0}]
/// secondary_text : "United Arab Emirates"

class Structured_formatting {
  String _mainText;
  List<Main_text_matched_substrings> _mainTextMatchedSubstrings;
  String _secondaryText;

  String get mainText => _mainText;
  List<Main_text_matched_substrings> get mainTextMatchedSubstrings => _mainTextMatchedSubstrings;
  String get secondaryText => _secondaryText;

  Structured_formatting({
      String mainText, 
      List<Main_text_matched_substrings> mainTextMatchedSubstrings, 
      String secondaryText}){
    _mainText = mainText;
    _mainTextMatchedSubstrings = mainTextMatchedSubstrings;
    _secondaryText = secondaryText;
}

  Structured_formatting.fromJson(dynamic json) {
    _mainText = json["mainText"];
    if (json["mainTextMatchedSubstrings"] != null) {
      _mainTextMatchedSubstrings = [];
      json["mainTextMatchedSubstrings"].forEach((v) {
        _mainTextMatchedSubstrings.add(Main_text_matched_substrings.fromJson(v));
      });
    }
    _secondaryText = json["secondaryText"];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map["mainText"] = _mainText;
    if (_mainTextMatchedSubstrings != null) {
      map["mainTextMatchedSubstrings"] = _mainTextMatchedSubstrings.map((v) => v.toJson()).toList();
    }
    map["secondaryText"] = _secondaryText;
    return map;
  }

}

/// length : 1
/// offset : 0

class Main_text_matched_substrings {
  int _length;
  int _offset;

  int get length => _length;
  int get offset => _offset;

  Main_text_matched_substrings({
      int length, 
      int offset}){
    _length = length;
    _offset = offset;
}

  Main_text_matched_substrings.fromJson(dynamic json) {
    _length = json["length"];
    _offset = json["offset"];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map["length"] = _length;
    map["offset"] = _offset;
    return map;
  }

}

/// length : 1
/// offset : 0

class Matched_substrings {
  int _length;
  int _offset;

  int get length => _length;
  int get offset => _offset;

  Matched_substrings({
      int length, 
      int offset}){
    _length = length;
    _offset = offset;
}

  Matched_substrings.fromJson(dynamic json) {
    _length = json["length"];
    _offset = json["offset"];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map["length"] = _length;
    map["offset"] = _offset;
    return map;
  }

}