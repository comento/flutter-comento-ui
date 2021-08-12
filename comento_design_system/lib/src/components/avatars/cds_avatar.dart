import 'package:comento_design_system/comento_design_system.dart';
import 'package:flutter/material.dart';

class CdsAvatar extends StatelessWidget {
  final Widget child;
  final double radius;
  final Color color;

  CdsAvatar({
    required this.child,
    required this.radius,
    this.color = CdsColors.white,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: radius * 2,
      height: radius * 2,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: color,
        shape: BoxShape.circle,
      ),
      child: child,
    );
  }
}
