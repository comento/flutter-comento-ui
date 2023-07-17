import 'package:comento_design_system/comento_design_system.dart';
import 'package:flutter/material.dart';

class CdsChip extends StatelessWidget {
  final String text;
  final Color color;
  final Color? textColor;
  final CdsSize size;
  final CdsType type;
  final Function()? onClose;

  CdsChip(
    this.text, {
    Key? key,
    this.size = CdsSize.medium,
    this.color = CdsColors.primary,
    this.textColor,
    this.type = CdsType.outlined,
    this.onClose,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        padding: _buildPadding(),
        height: _buildHeight(),
        decoration: BoxDecoration(
          color: _buildColor(),
          borderRadius: _buildBorderRadius(),
          border: _buildBorder(),
        ),
        child: _buildContents(),
      ),
    );
  }

  Widget _buildContents() {
    final textWidget = Text(
      text,
      style: _buildTextStyle(),
    );
    if (onClose == null) {
      return textWidget;
    }
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        textWidget,
        SizedBox(width: _buildIconMargin()),
        GestureDetector(
          onTap: onClose,
          child: Icon(
            CustomIcons.icon_close_small_line,
            size: _buildIconSize(),
            color: textColor,
          ),
        ),
      ],
    );
  }

  TextStyle _buildTextStyle() {
    return CdsTextStyles.pretendardStyle.merge(
      TextStyle(
        color: textColor ?? color,
        fontSize: _buildFontSize(),
        fontWeight: FontWeight.w400,
        height: size == CdsSize.small ? 1.1 : 1.25,
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
        return null;
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
        return BorderRadius.circular(4);
      case CdsSize.medium:
        return BorderRadius.circular(6);
      case CdsSize.large:
        return BorderRadius.circular(6);
      case CdsSize.xLarge:
        return BorderRadius.circular(8);
    }
  }

  EdgeInsets _buildPadding() {
    switch (size) {
      case CdsSize.small:
        return EdgeInsets.symmetric(
          horizontal: 4,
          vertical: 1.5,
        );
      case CdsSize.medium:
        return EdgeInsets.symmetric(
          horizontal: 8,
          vertical: 4.5,
        );
      case CdsSize.large:
        return EdgeInsets.symmetric(
          horizontal: 10,
          vertical: 5,
        );
      case CdsSize.xLarge:
        return EdgeInsets.symmetric(
          horizontal: 12,
          vertical: 5,
        );
    }
  }

  double _buildIconSize() {
    switch (size) {
      case CdsSize.small:
      case CdsSize.medium:
        return 12;
      case CdsSize.large:
      case CdsSize.xLarge:
        return 16;
    }
  }

  double _buildIconMargin() {
    switch (size) {
      case CdsSize.small:
        return 2;
      case CdsSize.medium:
      case CdsSize.large:
      case CdsSize.xLarge:
        return 4;
    }
  }
}
