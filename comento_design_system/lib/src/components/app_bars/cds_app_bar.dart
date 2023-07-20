import 'package:flutter/material.dart';

import '../../../comento_design_system.dart';

class CdsAppBar extends StatelessWidget implements PreferredSizeWidget {
  final Widget? leading;
  final Widget? title;
  final List<Widget>? actions;
  final double? actionsSpacing;
  final double? actionsWidth;
  final bool centerTitle;
  final bool isBottomBorderRequired;
  final EdgeInsets? margin;

  CdsAppBar({
    this.leading,
    this.title,
    this.actions,
    this.actionsSpacing,
    this.actionsWidth,
    this.centerTitle = false,
    this.isBottomBorderRequired = true,
    this.margin,
  });

  @override
  Size get preferredSize => const Size.fromHeight(CdsUI.headerHeight);

  double get _defaultActionsWidth {
    if (actions == null) return 0;
    final actionsWidth = actions!.length * 28.0;
    final actionsMarginWidth = (actions!.length - 1) * 8.0;
    return actionsWidth + actionsMarginWidth;
  }

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
        child: Stack(
          children: [
            _buildLeading(context),
            _buildTitle(context),
            _buildActions(context),
          ],
        ),
      ),
    );
  }

  Widget _buildLeading(BuildContext context) {
    if (leading == null) return const SizedBox.shrink();
    return Align(
      alignment: Alignment.centerLeft,
      child: leading!,
    );
  }

  Widget _buildTitle(BuildContext context) {
    if (title == null) return const SizedBox.shrink();
    final margin = EdgeInsets.only(
      left: leading == null || centerTitle ? 0 : 28.0,
      right: actions == null || centerTitle
          ? 0
          : actionsWidth ?? _defaultActionsWidth,
    );
    return Align(
      alignment: centerTitle ? Alignment.center : Alignment.centerLeft,
      child: Container(
        margin: margin,
        child: title!,
      ),
    );
  }

  Widget _buildActions(BuildContext context) {
    if (actions == null) return const SizedBox.shrink();
    return Align(
      alignment: Alignment.centerRight,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          for (int i = 0; i < actions!.length; i++)
            Container(
              margin: EdgeInsets.only(
                left: actionsSpacing == null || i == 0 ? 0 : actionsSpacing!,
              ),
              child: actions![i],
            ),
        ],
      ),
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
