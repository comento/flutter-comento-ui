import 'package:comento_design_system/comento_design_system.dart';
import 'package:flutter/material.dart';

class CdsOutlinedButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final VoidCallback? onLongPress;
  final Clip clipBehavior;
  final Widget child;
  final ButtonStyle? style;

  static ButtonStyle _getButtonStyle(ComponentColor color) {
    Color primary;
    Color borderColor;
    switch (color) {
      case ComponentColor.blue:
        primary = borderColor = CdsColors.blue600;
        break;
      case ComponentColor.grey:
        primary = CdsColors.grey500;
        borderColor = CdsColors.grey400;
        break;
      case ComponentColor.red:
        primary = borderColor = CdsColors.red600;
        break;
      case ComponentColor.green:
      default:
        primary = borderColor = CdsColors.green600;
    }
    return OutlinedButton.styleFrom(
      primary: primary,
      backgroundColor: CdsColors.white,
      shadowColor: CdsColors.transparent,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(CdsSizes.buttonRadius),
      ),
      side: BorderSide(color: borderColor),
    );
  }

  CdsOutlinedButton._({
    Key? key,
    required this.onPressed,
    this.onLongPress,
    this.clipBehavior = Clip.none,
    required this.child,
    required this.style,
  }) : super(key: key);

  factory CdsOutlinedButton.small({
    Key? key,
    required VoidCallback? onPressed,
    VoidCallback? onLongPress,
    Clip clipBehavior = Clip.none,
    required ComponentColor color,
    required String text,
    bool isEnabled = true,
    bool isLoading = false,
  }) =>
      CdsOutlinedButton._(
        key: key,
        onPressed: isEnabled ? onPressed : null,
        onLongPress: onLongPress,
        clipBehavior: clipBehavior,
        child: isLoading
            ? CdsThickCircularProgressIndicator.medium(color: color)
            : Text(text),
        style: OutlinedButton.styleFrom(
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

  factory CdsOutlinedButton.medium({
    Key? key,
    required VoidCallback? onPressed,
    VoidCallback? onLongPress,
    Clip clipBehavior = Clip.none,
    required ComponentColor color,
    required String text,
    bool isEnabled = true,
    bool isLoading = false,
  }) =>
      CdsOutlinedButton._(
        key: key,
        onPressed: isEnabled ? onPressed : null,
        onLongPress: onLongPress,
        clipBehavior: clipBehavior,
        child: isLoading
            ? CdsThickCircularProgressIndicator.medium(color: color)
            : Text(text),
        style: OutlinedButton.styleFrom(
          textStyle: CdsTextStyles.button.merge(
            TextStyle(fontSize: 14),
          ),
          padding: EdgeInsets.symmetric(horizontal: 12),
          minimumSize: const Size(60, 36),
        ).merge(_getButtonStyle(color)),
      );

  factory CdsOutlinedButton.large({
    Key? key,
    required VoidCallback? onPressed,
    VoidCallback? onLongPress,
    Clip clipBehavior = Clip.none,
    required ComponentColor color,
    required String text,
    bool isEnabled = true,
    bool isLoading = false,
  }) =>
      CdsOutlinedButton._(
        key: key,
        onPressed: isEnabled ? onPressed : null,
        onLongPress: onLongPress,
        clipBehavior: clipBehavior,
        child: isLoading
            ? CdsThickCircularProgressIndicator.medium(color: color)
            : Text(text),
        style: OutlinedButton.styleFrom(
          textStyle: CdsTextStyles.button.merge(
            TextStyle(fontSize: 16),
          ),
          padding: EdgeInsets.symmetric(horizontal: 14),
          minimumSize: const Size(76, 48),
        ).merge(_getButtonStyle(color)),
      );

  factory CdsOutlinedButton.largeFull({
    Key? key,
    required VoidCallback? onPressed,
    VoidCallback? onLongPress,
    Clip clipBehavior = Clip.none,
    required ComponentColor color,
    required String text,
    bool isEnabled = true,
    bool isLoading = false,
  }) =>
      CdsOutlinedButton._(
        key: key,
        onPressed: isEnabled ? onPressed : null,
        onLongPress: onLongPress,
        clipBehavior: clipBehavior,
        child: isLoading
            ? CdsThickCircularProgressIndicator.medium(color: color)
            : Text(text),
        style: OutlinedButton.styleFrom(
          textStyle: CdsTextStyles.button.merge(
            TextStyle(fontSize: 16),
          ),
          padding: EdgeInsets.symmetric(horizontal: 14),
          minimumSize: const Size(double.infinity, 48),
        ).merge(_getButtonStyle(color)),
      );

  @override
  Widget build(BuildContext context) => OutlinedButton(
        style: style,
        key: key,
        onPressed: onPressed,
        onLongPress: onLongPress,
        clipBehavior: clipBehavior,
        child: child,
      );
}
