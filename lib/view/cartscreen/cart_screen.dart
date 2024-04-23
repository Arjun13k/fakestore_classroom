import 'package:fakestore_classroom/controller/cartscreen_controller.dart';
import 'package:fakestore_classroom/model/cart_api_model.dart';
import 'package:fakestore_classroom/view/cartscreen/widget/cart_widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({
    super.key,
  });

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final cartScreenProvider = Provider.of<CartScreenController>(context);
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "CART",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
        ),
      ),
      body: Column(
        children: [
          Container(
            child: Expanded(
              child: ListView.separated(
                  shrinkWrap: true,
                  itemBuilder: (context, index) => CartWidget(
                        cartmodel: cartScreenProvider.cartModelList[index],
                        index: index,
                        totalprice: cartScreenProvider.totalPrice,
                      ),
                  separatorBuilder: (context, index) => SizedBox(
                        height: 10,
                      ),
                  itemCount: cartScreenProvider.cartModelList.length),
            ),
            //  Column(
            //   children: [
            //     Text("total amount"),
            //     SizedBox(
            //       height: 10,
            //     ),
            //     Padding(
            //       padding: const EdgeInsets.symmetric(horizontal: 10),
            //       child: Row(
            //         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            //         children: [

            //         ],
            //       ),
            //     )
            //   ],
            // ),
          ),
          Material(
            elevation: 5,
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20))),
              padding: EdgeInsets.only(top: 10),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        "Total items in list",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18),
                      ),
                      Text(cartScreenProvider.cartModelList.length.toString(),
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18)),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        "Total Amount",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18),
                      ),
                      Text(cartScreenProvider.totalPrice.toStringAsFixed(2),
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18)),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        "Shipping Charge",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18),
                      ),
                      Text(20.toString(),
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18)),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Divider(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        "Total",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 30),
                      ),
                      Text(cartScreenProvider.totalPrice.toStringAsFixed(2),
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 30)),
                    ],
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 15),
                    decoration: BoxDecoration(color: Colors.green),
                    width: double.infinity,
                    child: Center(
                        child: Text(
                      "Procced",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    )),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
