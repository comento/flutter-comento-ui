import 'package:comento_design_system/comento_design_system.dart';
import 'package:flutter/material.dart';

class CdsToggleChip extends StatelessWidget {
  final String text;
  final VoidCallback? onPressed;
  final CdsComponentColor color;
  final bool isActive;
  final CdsSize size;

  CdsToggleChip(
    this.text, {
    Key? key,
    required this.onPressed,
    this.isActive = false,
    this.size = CdsSize.medium,
    this.color = CdsComponentColor.grey,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CdsClickableChip(
      text,
      onPressed: onPressed,
      textColor: _buildTextColor(),
      color: _buildColor(),
      type: CdsType.fill,
      size: size,
    );
  }

  Color _buildTextColor() {
    switch (color) {
      case CdsComponentColor.grey:
      default:
        return isActive ? CdsColors.blue600 : CdsColors.grey700;
    }
  }

  Color _buildColor() {
    switch (color) {
      case CdsComponentColor.grey:
      default:
        return isActive ? CdsColors.blue100 : CdsColors.grey100;
    }
  }
}
