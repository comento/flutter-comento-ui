import 'package:comento_design_system/comento_design_system.dart';
import 'package:flutter/material.dart';

class CdsCheckBox extends StatelessWidget {
  final CdsSize size;
  final bool isChecked;
  final Function() onTap;
  const CdsCheckBox({
    Key? key,
    this.size = CdsSize.medium,
    this.isChecked = false,
    required this.onTap,
  }) : super(key: key);

  Size _getSize() {
    switch (size) {
      case CdsSize.xSmall:
        return Size(16, 16);
      case CdsSize.small:
        return Size(18, 18);
      case CdsSize.medium:
      default:
        return Size(20, 20);
    }
  }

  Size _getIconSize() {
    switch (size) {
      case CdsSize.xSmall:
      case CdsSize.small:
        return Size(12, 12);
      case CdsSize.medium:
      default:
        return Size(16, 16);
    }
  }

  @override
  Widget build(BuildContext context) {
    final size = _getSize();
    final iconSize = _getIconSize();
    return Container(
      height: size.height,
      width: size.width,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: isChecked ? CdsColors.white : CdsColors.grey000,
        border: Border.all(
          color: isChecked ? CdsColors.primary : CdsColors.grey250,
          width: 1.0,
        ),
        borderRadius: BorderRadius.circular(4.0),
      ),
      child: CdsAnimatedCheckIcon(
        isChecked: isChecked,
        disableToggle: false,
        onTap: onTap,
        width: iconSize.width,
        height: iconSize.height,
      ),
    );
  }
}
