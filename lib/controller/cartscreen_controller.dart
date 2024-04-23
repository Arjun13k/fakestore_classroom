import 'package:fakestore_classroom/model/cart_api_model.dart';
import 'package:fakestore_classroom/model/fakestore_api.model.dart';
import 'package:fakestore_classroom/view/cartscreen/cart_screen.dart';
import 'package:flutter/material.dart';

class CartScreenController with ChangeNotifier {
  List<CartApiModel> cartModelList = [];
  double totalPrice = 0;
  var shipping = 20;

  addProduct(FakeStoreApiModel product, BuildContext context) {
    final isCarted =
        cartModelList.any((element) => element.product.id == product.id);

    if (isCarted) {
      Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => CartScreen(),
          ));
      print("Already in cart");
    } else {
      cartModelList.add(CartApiModel(product: product));
    }
    calculation();
    notifyListeners();
  }

  deleteData(int value) {
    cartModelList.removeAt(value);
    calculation();
    notifyListeners();
  }
  // int add = 1;

  addItems(CartApiModel model) {
    model.quantity++;
    calculation();
    notifyListeners();
  }

  removeItems(CartApiModel model) {
    if (model.quantity <= 1) {
      print("Minimum Quantity required");
    } else {
      model.quantity--;
    }
    calculation();
    notifyListeners();
  }

  double productAmountCalcu(CartApiModel model) {
    double total = 0;
    return total += model.product.price! * model.quantity;
  }

  calculation() {
    totalPrice = 0;
    for (var items in cartModelList) {
      totalPrice = totalPrice + (items.quantity * (items.product.price ?? 0));
    }
    ;

    notifyListeners();
  }

  grandTotal() {
    calculation();
    totalPrice + shipping;
    notifyListeners();
  }

  // lessItem() {
  //   add--;

  //   // if (add == 0) {
  //   //   AlertDialog(
  //   //     title: Text("ARE YOU SURE YOU WANT TO CANCEL THIS PRODUCT"),
  //   //   );
  //   // }

  //   notifyListeners();
  // }
}
