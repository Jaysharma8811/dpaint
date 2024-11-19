import 'package:durgeshpaint/view/color_select_view.dart';
import 'package:durgeshpaint/view/product_details_view.dart';
import 'package:durgeshpaint/view/product_order_view.dart';
import 'package:durgeshpaint/view/product_view.dart';
import 'package:durgeshpaint/view/similar_products_view.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,


      ),
      home:   ProductDetails(),

    );
  }
}


