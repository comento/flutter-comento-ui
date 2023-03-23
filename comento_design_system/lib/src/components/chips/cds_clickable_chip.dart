import 'package:comento_design_system/comento_design_system.dart';
import 'package:flutter/material.dart';

class CdsClickableChip extends StatelessWidget {
  final String text;
  final VoidCallback? onPressed;
  final VoidCallback? onLongPress;
  final Color color;
  final Color? textColor;
  final Color? backgroundColor;
  final CdsSize size;
  final CdsType type;

  CdsClickableChip(
    this.text, {
    Key? key,
    required this.onPressed,
    this.onLongPress,
    this.size = CdsSize.medium,
    this.color = CdsColors.primary,
    this.textColor,
    this.backgroundColor = CdsColors.white,
    this.type = CdsType.outlined,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      onLongPress: onLongPress,
      child: Container(
        padding: _buildPadding(),
        height: _buildHeight(),
        decoration: BoxDecoration(
          color: _buildColor(),
          borderRadius: _buildBorderRadius(),
          border: _buildBorder(),
        ),
        child: _buildText(),
      ),
    );
  }

  Text _buildText() {
    return Text(
      text,
      style: _buildTextStyle(),
    );
  }

  TextStyle _buildTextStyle() {
    return CdsTextStyles.pretendardStyle.merge(
      TextStyle(
        color: textColor ?? color,
        fontSize: _buildFontSize(),
        fontWeight: FontWeight.w400,
        height: size == CdsSize.small ? 1 : 1.25,
      ),
    );
  }

  double _buildFontSize() {
    switch (size) {
      case CdsSize.small:
        return 10;
      case CdsSize.medium:
        return 12;
      case CdsSize.large:
        return 14;
      case CdsSize.xLarge:
        return 16;
    }
  }

  Color? _buildColor() {
    switch (type) {
      case CdsType.fill:
        return color;
      case CdsType.outlined:
        return backgroundColor;
    }
  }

  Border? _buildBorder() {
    switch (type) {
      case CdsType.fill:
        return null;
      case CdsType.outlined:
        return Border.all(
          color: color,
          width: 1,
        );
    }
  }

  double _buildHeight() {
    switch (size) {
      case CdsSize.small:
        return 16;
      case CdsSize.medium:
        return 24;
      case CdsSize.large:
        return 30;
      case CdsSize.xLarge:
        return 34;
    }
  }

  BorderRadius _buildBorderRadius() {
    switch (size) {
      case CdsSize.small:
        return BorderRadius.circular(8);
      case CdsSize.medium:
        return BorderRadius.circular(12);
      case CdsSize.large:
        return BorderRadius.circular(15);
      case CdsSize.xLarge:
        return BorderRadius.circular(17);
    }
  }

  EdgeInsets _buildPadding() {
    switch (size) {
      case CdsSize.small:
        return EdgeInsets.symmetric(
          horizontal: 6,
          vertical: 1.5,
        );
      case CdsSize.medium:
        return EdgeInsets.symmetric(
          horizontal: 10,
          vertical: 4.5,
        );
      case CdsSize.large:
        return EdgeInsets.symmetric(
          horizontal: 12,
          vertical: 5,
        );
      case CdsSize.xLarge:
        return EdgeInsets.symmetric(
          horizontal: 14,
          vertical: 5,
        );
    }
  }
}
