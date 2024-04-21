import 'package:cached_network_image/cached_network_image.dart';
import 'package:fakestore_classroom/controller/homescreen_controller.dart';
import 'package:fakestore_classroom/global_widget/reuseable_loading_indicator.dart';
import 'package:fakestore_classroom/view/cartscreen/cart_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) async {
      await Provider.of<HomeScreenCOntroller>(context, listen: false).getData();
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final providerObj = Provider.of<HomeScreenCOntroller>(context);
    return Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.menu),
          centerTitle: true,
          title: Text(
            "FAKE STORE",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
          ),
        ),
        body: providerObj.isLoading
            ? ReuseableLoadingIndicator()
            : ListView.separated(
                itemBuilder: (context, index) => Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 10),
                      child: Stack(
                        alignment: Alignment.topRight,
                        children: [
                          Container(
                            padding: EdgeInsets.symmetric(
                                vertical: 15, horizontal: 10),
                            width: double.infinity,
                            decoration: BoxDecoration(
                                border: Border.all(width: 1),
                                borderRadius: BorderRadius.circular(15)),
                            child: Column(
                              children: [
                                CachedNetworkImage(
                                  imageUrl:
                                      providerObj.fakestoreList[index].image ??
                                          "",
                                  height: 250,
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  providerObj.fakestoreList[index].title ?? "",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                    "\$${providerObj.fakestoreList[index].price.toString()}",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20))
                              ],
                            ),
                          ),
                          Positioned(
                              top: 0,
                              right: 0,
                              child: IconButton(
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => CartScreen(),
                                        ));
                                  },
                                  icon: Icon(
                                    Icons.shopping_cart,
                                    size: 40,
                                  )))
                        ],
                      ),
                    ),
                separatorBuilder: (context, index) => SizedBox(
                      height: 10,
                    ),
                itemCount: providerObj.fakestoreList.length));
  }
}
