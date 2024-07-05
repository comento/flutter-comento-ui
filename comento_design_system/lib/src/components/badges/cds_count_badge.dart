import 'dart:math';

import 'package:comento_design_system/comento_design_system.dart';
import 'package:flutter/material.dart';

enum CdsCountBadgeSize {
  small,
  medium,
}

class CdsCountBadge extends StatelessWidget {
  final int value;
  final Color color;
  final CdsCountBadgeSize size;

  const CdsCountBadge(
    this.value, {
    super.key,
    this.size = CdsCountBadgeSize.medium,
    this.color = CdsColors.primary,
  });

  @override
  Widget build(BuildContext context) {
    final text = _buildText();
    final size = _buildSize();
    final fontStyle = _buildTextStyle();
    final textSpan = TextSpan(
      text: text,
      style: fontStyle,
    );
    final maxWidth = _getMaxWidth(
      textSpan,
      size,
    );
    return Container(
      width: maxWidth,
      height: size,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(size / 2),
      ),
      alignment: Alignment.center,
      child: Text.rich(textSpan),
    );
  }

  String _buildText() {
    if (value > 99) {
      return '99+';
    }
    return value.toString();
  }

  double _buildSize() {
    switch (size) {
      case CdsCountBadgeSize.small:
        return 12;
      case CdsCountBadgeSize.medium:
        return 17;
    }
  }

  TextStyle _buildTextStyle() {
    return CdsTextStyles.s10w600grey300.copyWith(
      fontSize: _buildFontSize(),
      color: CdsColors.white,
    );
  }

  double _buildFontSize() {
    switch (size) {
      case CdsCountBadgeSize.small:
        return 8;
      case CdsCountBadgeSize.medium:
        return 10;
    }
  }

  double _getMaxWidth(TextSpan textSpan, double defaultWidth) {
    final textPainter = TextPainter(
      text: textSpan,
      textDirection: TextDirection.ltr,
    )..layout();
    return max(textPainter.width + _buildHorizontalPadding(), defaultWidth);
  }

  double _buildHorizontalPadding() {
    switch (size) {
      case CdsCountBadgeSize.small:
        return 6;
      case CdsCountBadgeSize.medium:
        return 8;
    }
  }
}
