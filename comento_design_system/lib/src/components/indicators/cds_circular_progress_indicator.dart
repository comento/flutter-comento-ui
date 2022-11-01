import 'package:comento_design_system/comento_design_system.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CdsCircularProgressIndicator extends StatelessWidget {
  final Color progressColor;
  final Color backgroundColor;
  final double size;
  final double strokeWidth;

  static Color _getProgressColor(CdsComponentColor color) {
    switch (color) {
      case CdsComponentColor.blue:
        return CdsColors.blue600;
      case CdsComponentColor.red:
        return CdsColors.red600;
      case CdsComponentColor.grey:
        return CdsColors.grey500;
      case CdsComponentColor.green:
      default:
        return CdsColors.blue600;
    }
  }

  static Color _getBackgroundColor(CdsComponentColor color) {
    switch (color) {
      case CdsComponentColor.blue:
        return CdsColors.blue100;
      case CdsComponentColor.red:
        return CdsColors.red100;
      case CdsComponentColor.grey:
        return CdsColors.grey200;
      case CdsComponentColor.green:
      default:
        return CdsColors.blue100;
    }
  }

  CdsCircularProgressIndicator._({
    required this.progressColor,
    required this.backgroundColor,
    required this.size,
    required this.strokeWidth,
  });

  factory CdsCircularProgressIndicator.small({
    CdsComponentColor color = CdsComponentColor.green,
  }) =>
      CdsCircularProgressIndicator._(
        progressColor: _getProgressColor(color),
        backgroundColor: _getBackgroundColor(color),
        size: 12 - 3,
        strokeWidth: 1.5,
      );

  factory CdsCircularProgressIndicator.medium({
    CdsComponentColor color = CdsComponentColor.green,
  }) =>
      CdsCircularProgressIndicator._(
        progressColor: _getProgressColor(color),
        backgroundColor: _getBackgroundColor(color),
        size: 16 - 4,
        strokeWidth: 2,
      );

  factory CdsCircularProgressIndicator.large({
    CdsComponentColor color = CdsComponentColor.green,
  }) =>
      CdsCircularProgressIndicator._(
        progressColor: _getProgressColor(color),
        backgroundColor: _getBackgroundColor(color),
        size: 20 - 6,
        strokeWidth: 3,
      );

  factory CdsCircularProgressIndicator.xLarge({
    CdsComponentColor color = CdsComponentColor.green,
  }) =>
      CdsCircularProgressIndicator._(
        progressColor: _getProgressColor(color),
        backgroundColor: _getBackgroundColor(color),
        size: 24 - 6,
        strokeWidth: 3,
      );

  @override
  Widget build(BuildContext context) => Center(
        child: SizedBox(
          height: size,
          width: size,
          child: RepaintBoundary(
            child: CircularProgressIndicator(
              color: progressColor,
              backgroundColor: backgroundColor,
              strokeWidth: strokeWidth,
            ),
          ),
        ),
      );
}
