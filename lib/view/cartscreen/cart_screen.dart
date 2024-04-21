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
              child: ListView.separated(
                  shrinkWrap: true,
                  itemBuilder: (context, index) => CartWidget(
                        cartmodel: cartScreenProvider.cartModelList[index],
                      ),
                  separatorBuilder: (context, index) => SizedBox(
                        height: 10,
                      ),
                  itemCount: cartScreenProvider.cartModelList.length)
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
        ],
      ),
    );
  }
}
