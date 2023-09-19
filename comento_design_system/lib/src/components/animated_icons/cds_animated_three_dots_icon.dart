import 'package:comento_design_system/src/strings.dart';
import 'package:flutter/material.dart';
import 'package:rive/rive.dart';

class CdsAnimatedThreeDotsIcon extends StatelessWidget {
  final double? width;
  final double? height;
  const CdsAnimatedThreeDotsIcon({
    Key? key,
    this.width,
    this.height,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: RiveAnimation.asset(
          'packages/$packageName/assets/animations/animated_loading_dots.riv'),
    );
  }
}
