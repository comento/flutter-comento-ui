import 'package:comento_design_system/comento_design_system.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CdsThickCircularProgressIndicator extends StatelessWidget {
  final Color progressColor;
  final Color backgroundColor;
  final double size;
  final double strokeWidth;

  static Color _getProgressColor(ComponentColor color) {
    switch (color) {
      case ComponentColor.blue:
        return CdsColors.blue800;
      case ComponentColor.red:
        return CdsColors.red800;
      case ComponentColor.grey:
        return CdsColors.grey500;
      case ComponentColor.green:
      default:
        return CdsColors.green800;
    }
  }

  static Color _getBackgroundColor(ComponentColor color) {
    switch (color) {
      case ComponentColor.blue:
        return CdsColors.blue100;
      case ComponentColor.red:
        return CdsColors.red100;
      case ComponentColor.grey:
        return CdsColors.grey200;
      case ComponentColor.green:
      default:
        return CdsColors.green100;
    }
  }

  CdsThickCircularProgressIndicator._({
    required this.progressColor,
    required this.backgroundColor,
    required this.size,
    required this.strokeWidth,
  });

  factory CdsThickCircularProgressIndicator.small({
    required ComponentColor color,
  }) =>
      CdsThickCircularProgressIndicator._(
        progressColor: _getProgressColor(color),
        backgroundColor: _getBackgroundColor(color),
        size: 12,
        strokeWidth: 1.5,
      );

  factory CdsThickCircularProgressIndicator.medium({
    required ComponentColor color,
  }) =>
      CdsThickCircularProgressIndicator._(
        progressColor: _getProgressColor(color),
        backgroundColor: _getBackgroundColor(color),
        size: 20,
        strokeWidth: 2.5,
      );

  factory CdsThickCircularProgressIndicator.large({
    required ComponentColor color,
  }) =>
      CdsThickCircularProgressIndicator._(
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
