import 'package:flutter/material.dart';

import '../../../comento_design_system.dart';
import '../../strings.dart';

class CdsAppBar extends StatelessWidget implements PreferredSizeWidget {
  final double _leadingWidth = 40;
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
      leading: leading ?? _getAppBarLeading(context),
      leadingWidth: _leadingWidth,
      title: title,
      centerTitle: centerTitle,
      actions: actions,
      backgroundColor: CdsColors.white,
      elevation: 0,
      titleSpacing: 8,
      bottom: _buildBottomBorder(),
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
    if (leading != null) {
      leading = new ConstrainedBox(
        constraints: BoxConstraints.tightFor(width: _leadingWidth),
        child: leading,
      );
    }

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
