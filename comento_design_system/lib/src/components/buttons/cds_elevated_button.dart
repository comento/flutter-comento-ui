import 'package:comento_design_system/comento_design_system.dart';
import 'package:comento_design_system/src/components/indicators/cds_thick_circular_progress_indicator.dart';
import 'package:flutter/material.dart';

import '../component_enums.dart';

class CdsElevatedButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final VoidCallback? onLongPress;
  final Clip clipBehavior;
  final Widget child;
  final ButtonStyle? style;

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

  CdsElevatedButton._({
    Key? key,
    required this.onPressed,
    this.onLongPress,
    this.clipBehavior = Clip.none,
    required this.child,
    required this.style,
  }) : super(key: key);

  factory CdsElevatedButton.small({
    Key? key,
    required VoidCallback? onPressed,
    VoidCallback? onLongPress,
    Clip clipBehavior = Clip.none,
    required ComponentColor color,
    required Widget child,
    bool isEnabled = true,
    bool isLoading = false,
  }) =>
      CdsElevatedButton._(
        key: key,
        onPressed: isEnabled ? onPressed : null,
        onLongPress: onLongPress,
        clipBehavior: clipBehavior,
        child: isLoading
            ? CdsThickCircularProgressIndicator.small(color: color)
            : child,
        style: ElevatedButton.styleFrom(
          textStyle: CdsTextStyles.button.merge(
            TextStyle(
              fontSize: 10,
              fontWeight: FontWeight.w400,
            ),
          ),
          padding: EdgeInsets.symmetric(horizontal: 8),
          minimumSize: const Size(36, 24),
        ).merge(_getButtonStyle(color)),
      );

  factory CdsElevatedButton.medium({
    Key? key,
    required VoidCallback? onPressed,
    VoidCallback? onLongPress,
    Clip clipBehavior = Clip.none,
    required ComponentColor color,
    required Widget child,
    bool isEnabled = true,
    bool isLoading = false,
  }) =>
      CdsElevatedButton._(
        key: key,
        onPressed: isEnabled ? onPressed : null,
        onLongPress: onLongPress,
        clipBehavior: clipBehavior,
        child: isLoading
            ? CdsThickCircularProgressIndicator.small(color: color)
            : child,
        style: ElevatedButton.styleFrom(
          textStyle: CdsTextStyles.button.merge(
            TextStyle(fontSize: 14),
          ),
          padding: EdgeInsets.symmetric(horizontal: 12),
          minimumSize: const Size(60, 36),
        ).merge(_getButtonStyle(color)),
      );

  factory CdsElevatedButton.large({
    Key? key,
    required VoidCallback? onPressed,
    VoidCallback? onLongPress,
    Clip clipBehavior = Clip.none,
    required ComponentColor color,
    required Widget child,
    bool isEnabled = true,
    bool isLoading = false,
  }) =>
      CdsElevatedButton._(
        key: key,
        onPressed: isEnabled ? onPressed : null,
        onLongPress: onLongPress,
        clipBehavior: clipBehavior,
        child: isLoading
            ? CdsThickCircularProgressIndicator.medium(color: color)
            : child,
        style: ElevatedButton.styleFrom(
          textStyle: CdsTextStyles.button.merge(
            TextStyle(fontSize: 16),
          ),
          padding: EdgeInsets.symmetric(horizontal: 14),
          minimumSize: const Size(76, 48),
        ).merge(_getButtonStyle(color)),
      );

  factory CdsElevatedButton.largeFull({
    Key? key,
    required VoidCallback? onPressed,
    VoidCallback? onLongPress,
    Clip clipBehavior = Clip.none,
    required ComponentColor color,
    required Widget child,
    bool isEnabled = true,
    bool isLoading = false,
  }) =>
      CdsElevatedButton._(
        key: key,
        onPressed: isEnabled ? onPressed : null,
        onLongPress: onLongPress,
        clipBehavior: clipBehavior,
        child: isLoading
            ? CdsThickCircularProgressIndicator.medium(color: color)
            : child,
        style: ElevatedButton.styleFrom(
          textStyle: CdsTextStyles.button.merge(
            TextStyle(fontSize: 16),
          ),
          padding: EdgeInsets.symmetric(horizontal: 14),
          minimumSize: const Size(double.infinity, 48),
        ).merge(_getButtonStyle(color)),
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
