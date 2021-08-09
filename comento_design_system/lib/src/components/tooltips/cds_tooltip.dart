import 'package:flutter/material.dart';
import 'package:super_tooltip/super_tooltip.dart' as st;

import '../../../comento_design_system.dart';

enum TooltipDirection { up, down, left, right }

class CdsTooltip extends StatelessWidget {
  final Widget? content;
  final Widget child;
  final TooltipDirection direction;

  CdsTooltip({
    this.content,
    this.direction = TooltipDirection.right,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.translucent,
      onTapDown: (tapDownDetails) => _onTap(context, tapDownDetails),
      child: child,
    );
  }

  void _onTap(BuildContext context, TapDownDetails tapDownDetails) {
    if (content == null) return;

    final tooltip = st.SuperTooltip(
      content: Material(child: content),
      popupDirection: st.TooltipDirection.values[direction.index],
      outsideBackgroundColor: CdsColors.transparent,
      borderColor: CdsColors.grey400,
      borderWidth: 0.5,
      shadowSpreadRadius: 0.3,
      shadowBlurRadius: 5.0,
      shadowColor: CdsColors.grey200,
      arrowBaseWidth: 10.0,
      arrowLength: 10.0,
      arrowTipDistance: 1.0,
      borderRadius: 3.0,
      backgroundColor: CdsColors.white,
    );

    tooltip.show(context);
  }
}
