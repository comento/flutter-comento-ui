import 'dart:ui';

import 'package:comento_design_system/comento_design_system.dart';
import 'package:flutter/material.dart';

class CdsElevatedIconButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final VoidCallback? onLongPress;
  final Clip clipBehavior;
  final ButtonStyle? style;
  final Widget child;

  static ButtonStyle _getButtonStyle(ComponentColor color) {
    Color primary;
    Color onPrimary;
    switch (color) {
      case ComponentColor.blue:
        primary = CdsColors.blue600;
        onPrimary = CdsColors.white;
        break;
      case ComponentColor.grey:
        primary = CdsColors.grey100;
        onPrimary = CdsColors.grey700;
        break;
      case ComponentColor.kakao:
        primary = CdsColors.kakao;
        onPrimary = CdsColors.black;
        break;
      case ComponentColor.green:
      default:
        primary = CdsColors.green600;
        onPrimary = CdsColors.white;
    }
    return ElevatedButton.styleFrom(
      primary: primary,
      onPrimary: onPrimary,
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(CdsSizes.buttonRadius),
      ),
    );
  }

  CdsElevatedIconButton._({
    Key? key,
    required this.onPressed,
    this.onLongPress,
    this.clipBehavior = Clip.none,
    required this.style,
    required this.child,
  }) : super(key: key);

  factory CdsElevatedIconButton.small({
    Key? key,
    required VoidCallback? onPressed,
    VoidCallback? onLongPress,
    Clip clipBehavior = Clip.none,
    required ComponentColor color,
    required String text,
    bool isEnabled = true,
    bool isLoading = false,
    required Widget icon,
  }) =>
      CdsElevatedIconButton._(
        key: key,
        onPressed: isEnabled ? onPressed : null,
        onLongPress: onLongPress,
        clipBehavior: clipBehavior,
        style: ElevatedButton.styleFrom(
          textStyle: CdsTextStyles.button.merge(
            TextStyle(
              fontSize: 10,
              fontWeight: FontWeight.w400,
            ),
          ),
          padding: EdgeInsets.only(left: 10.5, right: 8),
          minimumSize: const Size(36, 24),
        ).merge(_getButtonStyle(color)),
        child: isLoading
            ? CdsThickCircularProgressIndicator.small(color: color)
            : Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SizedBox(width: 7, height: 7, child: icon),
                  SizedBox(width: 4.5),
                  Text(text),
                ],
              ),
      );

  factory CdsElevatedIconButton.medium({
    Key? key,
    required VoidCallback? onPressed,
    VoidCallback? onLongPress,
    Clip clipBehavior = Clip.none,
    required ComponentColor color,
    required String text,
    bool isEnabled = true,
    bool isLoading = false,
    required Widget icon,
  }) =>
      CdsElevatedIconButton._(
        key: key,
        onPressed: isEnabled ? onPressed : null,
        onLongPress: onLongPress,
        clipBehavior: clipBehavior,
        style: ElevatedButton.styleFrom(
          textStyle: CdsTextStyles.button.merge(
            TextStyle(fontSize: 14),
          ),
          padding: EdgeInsets.only(left: 15.25, right: 12),
          minimumSize: const Size(60, 36),
        ).merge(_getButtonStyle(color)),
        child: isLoading
            ? CdsThickCircularProgressIndicator.small(color: color)
            : Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SizedBox(width: 11.5, height: 11.5, child: icon),
                  SizedBox(width: 5.25),
                  Text(text),
                ],
              ),
      );

  factory CdsElevatedIconButton.large({
    Key? key,
    required VoidCallback? onPressed,
    VoidCallback? onLongPress,
    Clip clipBehavior = Clip.none,
    required ComponentColor color,
    required String text,
    bool isEnabled = true,
    bool isLoading = false,
    required Widget icon,
  }) =>
      CdsElevatedIconButton._(
        key: key,
        onPressed: isEnabled ? onPressed : null,
        onLongPress: onLongPress,
        clipBehavior: clipBehavior,
        style: ElevatedButton.styleFrom(
          textStyle: CdsTextStyles.button.merge(
            TextStyle(fontSize: 16),
          ),
          padding: EdgeInsets.only(left: 17.25, right: 14),
          minimumSize: const Size(76, 48),
        ).merge(_getButtonStyle(color)),
        child: isLoading
            ? CdsThickCircularProgressIndicator.medium(color: color)
            : Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SizedBox(width: 11.5, height: 11.5, child: icon),
                  SizedBox(width: 5.25),
                  Text(text),
                ],
              ),
      );

  factory CdsElevatedIconButton.largeFull({
    Key? key,
    required VoidCallback? onPressed,
    VoidCallback? onLongPress,
    Clip clipBehavior = Clip.none,
    required ComponentColor color,
    required String text,
    bool isEnabled = true,
    bool isLoading = false,
    required Widget icon,
  }) =>
      CdsElevatedIconButton._(
        key: key,
        onPressed: isEnabled ? onPressed : null,
        onLongPress: onLongPress,
        clipBehavior: clipBehavior,
        style: ElevatedButton.styleFrom(
          textStyle: CdsTextStyles.button.merge(
            TextStyle(fontSize: 16),
          ),
          padding: EdgeInsets.only(left: 17.25, right: 14),
          minimumSize: const Size(76, 48),
        ).merge(_getButtonStyle(color)),
        child: isLoading
            ? CdsThickCircularProgressIndicator.medium(color: color)
            : Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(width: 11.5, height: 11.5, child: icon),
                  SizedBox(width: 5.25),
                  Text(text),
                ],
              ),
      );

  @override
  Widget build(BuildContext context) => ElevatedButton(
        style: style,
        key: key,
        onPressed: onPressed,
        onLongPress: onLongPress,
        clipBehavior: clipBehavior,
        child: child,
      );
}
