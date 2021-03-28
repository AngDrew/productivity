import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import '../resources/r.dart';

enum LeadingType {
  none,
  back,
  drawer,
}

class MyAppBar extends StatelessWidget with PreferredSizeWidget {
  const MyAppBar({
    this.actions,
    this.title = '',
    this.showTitle = true,
    this.leadingType = LeadingType.none,
    this.color,
  });

  /// control the widget action on right side of the appbar
  final List<Widget> actions;

  /// control the title text
  final String title;

  /// control to show title on the appbar
  final bool showTitle;
  // final Color bgColor;

  final LeadingType leadingType;

  final Color color;

  @override
  Widget build(BuildContext context) {
    Widget leading;
    switch (leadingType) {
      case LeadingType.back:
        leading = IconButton(
          icon: const Icon(
            Icons.chevron_left,
            color: secondary,
          ),
          onPressed: Get.back,
        );
        break;
      case LeadingType.drawer:
        leading = IconButton(
          icon: const Icon(
            Icons.menu,
            color: secondary,
          ),
          onPressed: Get.back,
        );
        break;
      case LeadingType.none:
        leading = const SizedBox();
        break;
      default:
        leading = const SizedBox();
    }

    return AppBar(
      actions: actions,
      title: showTitle
          ? Text(
              title,
              style: R.styles.titleXP,
            )
          : null,
      centerTitle: true,
      backgroundColor: color ?? Colors.transparent,
      elevation: 0,
      // close the leading button
      leading: leading,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(70);
}
