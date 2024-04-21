// import 'package:cached_network_image/cached_network_image.dart';
// import 'package:fakestore_classroom/model/fakestore_api.model.dart';
// import 'package:fakestore_classroom/view/cartscreen/cart_screen.dart';
// import 'package:flutter/material.dart';

// class DetailsScreen extends StatelessWidget {
//   const DetailsScreen({super.key, required this.detalsList});
//   final FakeStoreApiModel detalsList;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(),
//       body: Padding(
//         padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
//         child: Container(
//           padding: EdgeInsets.symmetric(vertical: 15, horizontal: 10),
//           width: double.infinity,
//           decoration: BoxDecoration(
//               border: Border.all(width: 1),
//               borderRadius: BorderRadius.circular(15)),
//           child: SingleChildScrollView(
//             child: Column(
//               children: [
//                 CachedNetworkImage(
//                   imageUrl: detalsList.image ?? "",
//                   height: 300,
//                 ),
//                 SizedBox(
//                   height: 10,
//                 ),
//                 Text(
//                   detalsList.title ?? "",
//                   style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
//                 ),
//                 SizedBox(
//                   height: 10,
//                 ),
//                 Text("\$${detalsList.price.toString()}",
//                     style:
//                         TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
//                 SizedBox(
//                   height: 10,
//                 ),
//                 Text(
//                   detalsList.description ?? "",
//                   style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
//                 ),
//                 SizedBox(
//                   height: 10,
//                 ),
//                 GestureDetector(
//                   onTap: () => Navigator.push(
//                       context,
//                       MaterialPageRoute(
//                         builder: (context) => CartScreen(),
//                       )),
//                   child: Container(
//                     decoration: BoxDecoration(
//                         color: Colors.green,
//                         borderRadius: BorderRadius.circular(15)),
//                     padding: EdgeInsets.symmetric(vertical: 10),
//                     width: double.infinity,
//                     child: Center(
//                         child: Text("ADD TO CART",
//                             style: TextStyle(
//                                 color: Colors.white,
//                                 fontWeight: FontWeight.bold,
//                                 fontSize: 20))),
//                   ),
//                 )
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
