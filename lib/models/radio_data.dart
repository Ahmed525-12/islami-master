
class RadioData {
  List<Radios> ?radios;

  RadioData({this.radios});

  RadioData.fromJson(Map<String, dynamic> json) {
    if(json["radios"] is List) {
      radios = json["radios"]==null ? null : (json["radios"] as List).map((e)=>Radios.fromJson(e)).toList();
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if(radios != null) {
      data["radios"] = radios?.map((e)=>e.toJson()).toList();
    }
    return data;
  }
}

class Radios {
  String? name;
  String? radioUrl;

  Radios({this.name, this.radioUrl});

  Radios.fromJson(Map<String, dynamic> json) {
    if(json["name"] is String) {
      name = json["name"];
    }
    if(json["radio_url"] is String) {
      radioUrl = json["radio_url"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data["name"] = name;
    data["radio_url"] = radioUrl;
    return data;
  }
}