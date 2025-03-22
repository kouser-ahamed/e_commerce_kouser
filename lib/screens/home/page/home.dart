import 'package:flutter/material.dart';
import '../widgets/appBar.dart';
import '../widgets/product_cart.dart';
import 'package:icons_plus/icons_plus.dart';
class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: FAppbar(backButton: true,),
      body: Center(child: Productcart(name: "TExt", price: 123, rating: 124, reviews: 135)),

      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Iconsax.home_outline),
              label: "Home"
            ),
            BottomNavigationBarItem(
              icon: Icon(Iconsax.heart_outline),
              label: "Wishlist"
            ),
            BottomNavigationBarItem(
              icon: Icon(Iconsax.shopping_bag_outline),
              label: "Order"
            ),
            BottomNavigationBarItem(
              icon: Icon(Iconsax.user_outline),
              label: "Account"
            ),
          ],
        )
    );
    
  }
}
