import 'package:fakestore_classroom/model/fakestore_api.model.dart';

class CartApiModel {
  final int quantity;
  final FakeStoreApiModel product;
  CartApiModel({required this.product, this.quantity = 1});
}
