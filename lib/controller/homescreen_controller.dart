import 'dart:convert';

import 'package:fakestore_classroom/model/fakestore_api.model.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class HomeScreenCOntroller with ChangeNotifier {
  bool isLoading = false;
  List<FakeStoreApiModel> fakestoreList = [];

  getData() async {
    isLoading = true;
    notifyListeners();
    Uri url = Uri.parse('https://fakestoreapi.com/products');
    var respo = await http.get(url);
    if (respo.statusCode == 200) {
      List decodedData = jsonDecode(respo.body);

      fakestoreList =
          decodedData.map((e) => FakeStoreApiModel.fromJson(e)).toList();
    } else {
      print("Failed");
    }
    isLoading = false;
    notifyListeners();
  }
}
