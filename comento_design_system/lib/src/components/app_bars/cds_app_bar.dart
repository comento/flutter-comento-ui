import 'package:flutter/material.dart';

import '../../../comento_design_system.dart';
import '../../strings.dart';

class CdsAppBar extends StatelessWidget implements PreferredSizeWidget {
  final Widget? leading;
  final double? leadingWidth;
  final Widget? title;
  final List<Widget>? actions;
  final bool? centerTitle;
  final PreferredSize? bottom;

  CdsAppBar({
    this.leading,
    this.leadingWidth = 40,
    this.title,
    this.actions,
    this.centerTitle,
    this.bottom,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: leading ?? _getAppBarLeading(context),
      leadingWidth: leadingWidth,
      title: title,
      centerTitle: centerTitle,
      actions: actions,
      backgroundColor: CdsColors.white,
      elevation: 0,
      titleSpacing: 8,
      bottom: bottom ?? _buildBottomBorder(),
    );
  }

  PreferredSize _buildBottomBorder() {
    return PreferredSize(
      child: Container(
        color: CdsColors.grey100,
        height: 1.0,
      ),
      preferredSize: Size.fromHeight(1.0),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(49);

  Widget? _getAppBarLeading(BuildContext context) {
    final ModalRoute<Object?>? parentRoute = ModalRoute.of(context);
    final bool canPop = parentRoute?.canPop ?? false;
    Widget? leading = canPop ? CdsBackButton() : null;
    return leading;
  }
}

class CdsBackButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 16),
      child: IconButton(
        icon: Image.asset(
          'assets/images/icons/backward.png',
          package: packageName,
        ),
        tooltip: MaterialLocalizations.of(context).backButtonTooltip,
        onPressed: () {
          Navigator.of(context).maybePop();
        },
        padding: EdgeInsets.zero,
        constraints: BoxConstraints(),
      ),
    );
  }
}
