import 'package:flutter/material.dart';
import '../widgets/appBar.dart';
import '../widgets/product_cart.dart';
class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: FAppbar(backButton: true,),
      body: Center(child: Productcart(name: "TExt", price: 123, rating: 124, reviews: 135)),
    );
  }
}
