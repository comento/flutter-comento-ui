import 'package:comento_design_system/comento_design_system.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CdsThickCircularProgressIndicator extends StatelessWidget {
  final Color progressColor;
  final Color backgroundColor;
  final double size;
  final double strokeWidth;

  static Color _getProgressColor(CdsComponentColor color) {
    switch (color) {
      case CdsComponentColor.blue:
        return CdsColors.blue800;
      case CdsComponentColor.red:
        return CdsColors.red800;
      case CdsComponentColor.grey:
        return CdsColors.grey500;
      case CdsComponentColor.kakao:
        return CdsColors.grey700;
      case CdsComponentColor.green:
      default:
        return CdsColors.green800;
    }
  }

  static Color _getBackgroundColor(CdsComponentColor color) {
    switch (color) {
      case CdsComponentColor.blue:
        return CdsColors.white;
      case CdsComponentColor.red:
        return CdsColors.white;
      case CdsComponentColor.grey:
        return CdsColors.grey200;
      case CdsComponentColor.kakao:
        return CdsColors.white;
      case CdsComponentColor.green:
      default:
        return CdsColors.white;
    }
  }

  CdsThickCircularProgressIndicator._({
    required this.progressColor,
    required this.backgroundColor,
    required this.size,
    required this.strokeWidth,
  });

  factory CdsThickCircularProgressIndicator.small({
    CdsComponentColor color = CdsComponentColor.green,
  }) =>
      CdsThickCircularProgressIndicator._(
        progressColor: _getProgressColor(color),
        backgroundColor: _getBackgroundColor(color),
        size: 12,
        strokeWidth: 1.5,
      );

  factory CdsThickCircularProgressIndicator.medium({
    CdsComponentColor color = CdsComponentColor.green,
  }) =>
      CdsThickCircularProgressIndicator._(
        progressColor: _getProgressColor(color),
        backgroundColor: _getBackgroundColor(color),
        size: 20,
        strokeWidth: 2.5,
      );

  factory CdsThickCircularProgressIndicator.large({
    CdsComponentColor color = CdsComponentColor.green,
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
