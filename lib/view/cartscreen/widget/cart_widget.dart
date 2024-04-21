import 'package:fakestore_classroom/model/cart_api_model.dart';
import 'package:flutter/material.dart';

class CartWidget extends StatelessWidget {
  const CartWidget({super.key, this.cartmodel});
  final CartApiModel? cartmodel;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Material(
        elevation: 5,
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: ListTile(
              leading: Text("image"),
              title: Text(cartmodel?.product.title ?? ""),
              subtitle: Column(
                children: [
                  Row(
                    children: [
                      Text(cartmodel?.product.rating.toString() ?? ""),
                      SizedBox(
                        width: 10,
                      ),
                      Text(cartmodel?.product.price.toString() ?? "")
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Container(
                          width: 40,
                          height: 40,
                          padding: EdgeInsets.symmetric(horizontal: 0),
                          decoration: BoxDecoration(
                              border: Border.all(
                                width: 2,
                                color: Colors.red,
                              ),
                              borderRadius: BorderRadius.circular(10)),
                          child: IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.remove,
                                size: 15,
                              ))),
                      SizedBox(
                        width: 15,
                      ),
                      Text(""),
                      SizedBox(
                        width: 15,
                      ),
                      Container(
                          width: 40,
                          height: 40,
                          decoration: BoxDecoration(
                              border: Border.all(
                                width: 2,
                                color: Colors.green,
                              ),
                              borderRadius: BorderRadius.circular(10)),
                          child: IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.add,
                                size: 15,
                              )))
                    ],
                  )
                ],
              )),
        ),
      ),
    );
  }
}
