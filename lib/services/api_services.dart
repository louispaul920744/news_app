import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http_plugin;
import 'package:news_app/constants/app_constants.dart';
import 'package:news_app/models/news_model.dart';

class ApiServices {
  static Future<void> fetchNews() async {
    var apiResponse = await http_plugin.get(AppConstants.apiUrl);
    if (apiResponse.statusCode == 200) {
      var jsonData = jsonDecode(apiResponse.body);
      if (kDebugMode) {
        print(jsonData);
      }
    }
  }
}
