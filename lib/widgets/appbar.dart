import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class MyAppbar extends StatelessWidget implements PreferredSizeWidget {
  final bool isBackRequired;
  final String? title;
  final List<Widget>? actions;
  const MyAppbar({
    super.key,
    this.actions,
    this.isBackRequired = true,
    this.title,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: title == null
          ? null
          : Text(
              title!,
              style: const TextStyle(
                fontSize: 22,
                color: Colors.black,
                fontWeight: FontWeight.w600,
               
              ),
            ),
      centerTitle: true,
      elevation: 0,
      backgroundColor: Colors.white,
      automaticallyImplyLeading: isBackRequired,
      leading: isBackRequired
          ? IconButton(
              onPressed: () {
                Navigator.of(context).maybePop();
              },
              icon: const Icon(
                Iconsax.arrow_square_left,
                color: Colors.black,
              ),
            )
          : null,
      leadingWidth: 65,
      actions: actions,
    );
  }

  @override
  Size get preferredSize => AppBar().preferredSize;
}
