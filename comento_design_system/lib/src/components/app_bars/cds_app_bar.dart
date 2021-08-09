import 'package:flutter/material.dart';

import '../../../comento_design_system.dart';

class CdsAppBar extends StatelessWidget implements PreferredSizeWidget {
  final Widget? leading;
  final Widget? title;
  final List<Widget>? actions;
  final bool? centerTitle;

  CdsAppBar({
    this.leading,
    this.title,
    this.actions,
    this.centerTitle,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: leading,
      title: title,
      actions: actions,
      centerTitle: centerTitle,
      backgroundColor: CdsColors.white,
      elevation: 4,
      shadowColor: CdsColors.grey100,
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(48);
}
