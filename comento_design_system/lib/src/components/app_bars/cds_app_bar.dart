import 'package:flutter/material.dart';

import '../../../comento_design_system.dart';

class CdsAppBar extends StatelessWidget implements PreferredSizeWidget {
  final Widget? leading;
  final Widget? title;
  final List<Widget>? actions;
  final double? actionsSpacing;
  final bool centerTitle;
  final bool isBottomBorderRequired;
  final EdgeInsets? margin;

  CdsAppBar({
    this.leading,
    this.title,
    this.actions,
    this.actionsSpacing,
    this.centerTitle = false,
    this.isBottomBorderRequired = true,
    this.margin,
  });

  @override
  Size get preferredSize => const Size.fromHeight(CdsUI.headerHeight);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        margin: margin,
        color: CdsColors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _buildContents(context),
            _buildBottomBorder(context),
          ],
        ),
      ),
    );
  }

  Widget _buildContents(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: CdsUI.widthPadding),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            if (leading != null) _buildLeading(context),
            _buildTitle(context),
            if (actions != null) _buildActions(context),
          ],
        ),
      ),
    );
  }

  Widget _buildLeading(BuildContext context) {
    return leading!;
  }

  Widget _buildTitle(BuildContext context) {
    return Expanded(
      child: title != null
          ? Align(
              alignment: centerTitle ? Alignment.center : Alignment.centerLeft,
              child: title!,
            )
          : const SizedBox.shrink(),
    );
  }

  Widget _buildActions(BuildContext context) {
    return Row(
      children: [
        for (int i = 0; i < actions!.length; i++)
          Container(
            margin: EdgeInsets.only(
              right: actionsSpacing == null || i == actions!.length - 1
                  ? 0
                  : actionsSpacing!,
            ),
            child: actions![i],
          ),
      ],
    );
  }

  Widget _buildBottomBorder(BuildContext context) {
    if (!isBottomBorderRequired) return const SizedBox.shrink();
    return Container(
      color: CdsColors.grey200,
      height: 1.0,
    );
  }
}
