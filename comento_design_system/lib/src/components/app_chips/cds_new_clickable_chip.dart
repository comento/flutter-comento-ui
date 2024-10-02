import 'package:comento_design_system/comento_design_system.dart';
import 'package:flutter/material.dart';

class CdsNewClickableChip extends StatelessWidget {
  final String text;
  final CdsClickableChipType type;
  final CdsChipColor color;
  final CdsChipSize size;
  final IconData? rightIcon;
  final IconData? leftIcon;
  final void Function()? onTap;

  const CdsNewClickableChip(
    this.text, {
    required this.type,
    required this.color,
    required this.size,
    this.rightIcon,
    this.leftIcon,
    required this.onTap,
  }) : assert(rightIcon != null && leftIcon == null ||
            leftIcon != null && rightIcon == null ||
            rightIcon == null && leftIcon == null);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      behavior: HitTestBehavior.opaque,
      child: Container(
        padding: size.clickableHorizontalPadding,
        height: size.clickableHeight,
        decoration: getDecorationByType(),
        child: Row(
          textBaseline: TextBaseline.alphabetic,
          mainAxisSize: MainAxisSize.min,
          children: [
            if (leftIcon != null) ...[
              Icon(
                leftIcon,
                size: size.iconSize,
                color: color.contentsColor,
              ),
              SizedBox(
                width: size.iconMargin,
              ),
            ],
            Text(
              text,
              style: TextStyle(
                color: color.contentsColor,
                fontSize: size.fontSize,
                fontWeight: size.fontWeigt,
                height: 1,
              ),
            ),
            if (rightIcon != null) ...[
              SizedBox(
                width: size.iconMargin,
              ),
              Icon(
                rightIcon,
                size: size.iconSize,
                color: color.contentsColor,
              ),
            ],
          ],
        ),
      ),
    );
  }

  BoxDecoration getDecorationByType() {
    switch (type) {
      case CdsClickableChipType.fill:
        return BoxDecoration(
          color: color.backgroundColor,
          borderRadius: size.roundedBorderRadius,
        );
      case CdsClickableChipType.outline:
        return BoxDecoration(
          color: Colors.transparent,
          borderRadius: size.roundedBorderRadius,
          border: Border.all(
            color: color.clickableBorderColor,
            width: 1,
          ),
        );
      case CdsClickableChipType.transparent:
        return BoxDecoration(
          color: color.transparentBackgroundColor,
          borderRadius: size.roundedBorderRadius,
          border: Border.all(
            color: color.contentsColor,
            width: 1,
          ),
        );
    }
  }
}
