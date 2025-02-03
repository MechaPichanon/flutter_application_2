import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter_application_2/models/products.dart';
import 'package:http/http.dart' as http;

class HttpService {

  Future<List<Products>> fetchData({required String strUrl}) async {
    debugPrint('url: $strUrl');
    final response = await http.get(Uri.parse(strUrl), headers: {
      "Accept": "application/json",
      "content-type": "application/json",
    });

    if (response.statusCode == 200) {
      // List<dynamic> data = jsonDecode(response.body);  // ok
      List data = json.decode(response.body); // ok


      return data
          .map((e) => Products.fromJson(e))
          .toList(); // use method in class
    } else {
      debugPrint('failed loading');
      throw Exception('Failed to load data!');
    }
  }

  // fetch 1 record
  Future<Products> fetchRecord({required String strUrl}) async {
    debugPrint('url: $strUrl');
    final response = await http.get(Uri.parse(strUrl), headers: {
      "Accept": "application/json",
      "content-type": "application/json",
    });

    if (response.statusCode == 200) {
      debugPrint('${response.body.toString()}');
      return Products.fromJson(jsonDecode(response.body));
    } else {
      debugPrint('failed loading data!');
      throw Exception('Failed to load data!');
    }
  }
}
