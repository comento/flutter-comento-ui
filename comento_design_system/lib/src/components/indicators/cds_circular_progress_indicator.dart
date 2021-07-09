import 'package:comento_design_system/comento_design_system.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

enum CdsCircularProgressIndicatorColor {
  green,
  blue,
  red,
  grey,
}

class CdsCircularProgressIndicator extends StatelessWidget {
  final Color progressColor;
  final Color backgroundColor;
  final double size;
  final double strokeWidth;

  static Color _getProgressColor(
    CdsCircularProgressIndicatorColor color,
  ) {
    switch (color) {
      case CdsCircularProgressIndicatorColor.green:
        return CdsColors.green600;
      case CdsCircularProgressIndicatorColor.blue:
        return CdsColors.blue600;
      case CdsCircularProgressIndicatorColor.red:
        return CdsColors.red600;
      case CdsCircularProgressIndicatorColor.grey:
        return CdsColors.grey500;
    }
  }

  static Color _getBackgroundColor(
    CdsCircularProgressIndicatorColor color,
  ) {
    switch (color) {
      case CdsCircularProgressIndicatorColor.green:
        return CdsColors.green100;
      case CdsCircularProgressIndicatorColor.blue:
        return CdsColors.blue100;
      case CdsCircularProgressIndicatorColor.red:
        return CdsColors.red100;
      case CdsCircularProgressIndicatorColor.grey:
        return CdsColors.grey200;
    }
  }

  CdsCircularProgressIndicator._({
    required this.progressColor,
    required this.backgroundColor,
    required this.size,
    required this.strokeWidth,
  });

  factory CdsCircularProgressIndicator.small({
    required CdsCircularProgressIndicatorColor color,
  }) =>
      CdsCircularProgressIndicator._(
        progressColor: _getProgressColor(color),
        backgroundColor: _getBackgroundColor(color),
        size: 12,
        strokeWidth: 1.5,
      );

  factory CdsCircularProgressIndicator.medium({
    required CdsCircularProgressIndicatorColor color,
  }) =>
      CdsCircularProgressIndicator._(
        progressColor: _getProgressColor(color),
        backgroundColor: _getBackgroundColor(color),
        size: 20,
        strokeWidth: 2.5,
      );

  factory CdsCircularProgressIndicator.large({
    required CdsCircularProgressIndicatorColor color,
  }) =>
      CdsCircularProgressIndicator._(
        progressColor: _getProgressColor(color),
        backgroundColor: _getBackgroundColor(color),
        size: 28,
        strokeWidth: 3.5,
      );

  @override
  Widget build(BuildContext context) => SizedBox(
        height: size,
        width: size,
        child: CircularProgressIndicator(
          color: progressColor,
          backgroundColor: backgroundColor,
          strokeWidth: strokeWidth,
        ),
      );
}
