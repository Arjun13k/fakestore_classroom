import 'package:fakestore_classroom/controller/cartscreen_controller.dart';
import 'package:fakestore_classroom/controller/homescreen_controller.dart';
import 'package:fakestore_classroom/view/homescreen/homescreen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(FakeStoreClassrom());
}

class FakeStoreClassrom extends StatelessWidget {
  const FakeStoreClassrom({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => HomeScreenCOntroller(),
        ),
        ChangeNotifierProvider(
          create: (context) => CartScreenController(),
        )
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomeScreen(),
      ),
    );
  }
}
