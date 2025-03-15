import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';

import '../../../utils/constants/colors.dart';

class FAppbar extends StatelessWidget implements PreferredSizeWidget {
  const FAppbar({
    super.key,
    this.firstIcon = Iconsax.notification_bing_outline,
    this.secondIcon = Iconsax.shopping_cart_outline,
    this.backButton = false, required this.title,
  });

  final String title;
  final IconData firstIcon;
  final IconData secondIcon;
  final bool backButton;

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: backButton ? const Icon(Iconsax.arrow_left_2_outline) : null,
      title:  Text(
        title,
        style: TextStyle(
          fontFamily: "DMSans",
          fontWeight: FontWeight.w700,
          color: FColors.oceanBlue,
        ),
      ),
      actions: [
        Container(
          padding: const EdgeInsets.fromLTRB(10, 10, 5, 10),
          child: Icon(
            firstIcon,
            color: FColors.dark,
          ),
        ),
        Container(
          padding: const EdgeInsets.fromLTRB(5, 10, 10, 10),
          child: Icon(
            secondIcon,
            color: FColors.dark,
          ),
        ),
      ],
      centerTitle: true,
      elevation: 2,
      backgroundColor: Colors.white,
    );
  }
}
