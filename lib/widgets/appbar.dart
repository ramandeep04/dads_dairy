import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:iconsax/iconsax.dart';

class MyAppbar extends StatelessWidget implements PreferredSizeWidget {
  final bool isBackRequired;
  final String? title;
  final String? fontFamily;
  final SystemUiOverlayStyle? style;
  final Color? color;
  final List<Widget>? actions;
  const MyAppbar({
    super.key,
    this.actions,
    this.isBackRequired = true,
    this.title,
    this.color, this.fontFamily, this.style,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: title == null
          ? null
          : Text(
              title!,
              style:  TextStyle(
                fontSize: 22,
                color: Colors.black,
                fontFamily: fontFamily,
                fontWeight: FontWeight.w600,
              ),
            ),
      centerTitle: true,
      elevation: 0,
      backgroundColor: color ?? Colors.white,
      systemOverlayStyle: style ?? SystemUiOverlayStyle.dark,
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
