import 'dart:convert';

import 'package:islami/models/radio_data.dart';
import 'package:http/http.dart'as http;

class ApiManager {
  static const String baseUrl = "api.mp3quran.net";
  static Future<RadioData>getRadioData()async{
      var url =Uri.https(baseUrl, "/radios/radio_arabic.json");
        var response = await http.get(url);
    try {
      var bodyString = response.bodyBytes;
      var json = jsonDecode( utf8.decode(bodyString) );
      var radioDataResponse = RadioData.fromJson(json);
      return radioDataResponse;
    } catch (e) {
      rethrow;
    }
  }
}
