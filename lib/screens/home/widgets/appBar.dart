import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';

import '../../../utils/constants/colors.dart';

class FAppbar extends StatelessWidget implements PreferredSizeWidget {
  const FAppbar({
    super.key,
  });
  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        "Mega Shop",
        style: TextStyle(
          fontFamily: "DMSans",
          fontWeight: FontWeight.bold,
          color: FColors.oceanBlue,
        ),
      ),
      centerTitle: true,
      actions: [
        Container(
          padding: const EdgeInsets.all(10),
          child: Icon(Iconsax.notification_bing_outline)),
        Container(
          padding: const EdgeInsets.all(10),
          child: Icon(Iconsax.shopping_cart_outline)),
      ],
    );
  }
}
