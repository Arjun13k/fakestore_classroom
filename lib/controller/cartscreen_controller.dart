import 'package:fakestore_classroom/model/cart_api_model.dart';
import 'package:flutter/material.dart';

class CartScreenController with ChangeNotifier {
  List<CartApiModel> cartModelList = [];

  int add = 1;

  addItems() {
    add++;
    notifyListeners();
  }

  lessItem() {
    add--;

    // if (add == 0) {
    //   AlertDialog(
    //     title: Text("ARE YOU SURE YOU WANT TO CANCEL THIS PRODUCT"),
    //   );
    // }

    notifyListeners();
  }
}
