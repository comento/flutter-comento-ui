import 'package:comento_design_system/comento_design_system.dart';
import 'package:flutter/material.dart';

class CdsTextButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final VoidCallback? onLongPress;
  final Clip clipBehavior;
  final Widget child;
  final ButtonStyle? style;

  static ButtonStyle _getButtonStyle(ComponentColor color) {
    Color primary;
    switch (color) {
      case ComponentColor.blue:
        primary = CdsColors.blue600;
        break;
      case ComponentColor.grey:
        primary = CdsColors.grey500;
        break;
      case ComponentColor.red:
        primary = CdsColors.red600;
        break;
      case ComponentColor.green:
      default:
        primary = CdsColors.green600;
    }
    return TextButton.styleFrom(
      primary: primary,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(CdsSizes.buttonRadius),
      ),
    );
  }

  CdsTextButton._({
    Key? key,
    required this.onPressed,
    this.onLongPress,
    this.clipBehavior = Clip.none,
    required this.child,
    required this.style,
  }) : super(key: key);

  factory CdsTextButton.small({
    Key? key,
    required VoidCallback? onPressed,
    VoidCallback? onLongPress,
    Clip clipBehavior = Clip.none,
    required ComponentColor color,
    required String text,
    bool isEnabled = true,
    bool isLoading = false,
  }) =>
      CdsTextButton._(
        key: key,
        onPressed: isEnabled ? onPressed : null,
        onLongPress: onLongPress,
        clipBehavior: clipBehavior,
        child: isLoading
            ? CdsThickCircularProgressIndicator.medium(color: color)
            : Text(text),
        style: TextButton.styleFrom(
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

  factory CdsTextButton.medium({
    Key? key,
    required VoidCallback? onPressed,
    VoidCallback? onLongPress,
    Clip clipBehavior = Clip.none,
    required ComponentColor color,
    required String text,
    bool isEnabled = true,
    bool isLoading = false,
  }) =>
      CdsTextButton._(
        key: key,
        onPressed: isEnabled ? onPressed : null,
        onLongPress: onLongPress,
        clipBehavior: clipBehavior,
        child: isLoading
            ? CdsThickCircularProgressIndicator.medium(color: color)
            : Text(text),
        style: TextButton.styleFrom(
          textStyle: CdsTextStyles.button.merge(
            TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w400,
            ),
          ),
          padding: EdgeInsets.symmetric(horizontal: 12),
          minimumSize: const Size(60, 36),
        ).merge(_getButtonStyle(color)),
      );

  factory CdsTextButton.large({
    Key? key,
    required VoidCallback? onPressed,
    VoidCallback? onLongPress,
    Clip clipBehavior = Clip.none,
    required ComponentColor color,
    required String text,
    bool isEnabled = true,
    bool isLoading = false,
  }) =>
      CdsTextButton._(
        key: key,
        onPressed: isEnabled ? onPressed : null,
        onLongPress: onLongPress,
        clipBehavior: clipBehavior,
        child: isLoading
            ? CdsThickCircularProgressIndicator.medium(color: color)
            : Text(text),
        style: TextButton.styleFrom(
          textStyle: CdsTextStyles.button.merge(
            TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w400,
            ),
          ),
          padding: EdgeInsets.symmetric(horizontal: 14),
          minimumSize: const Size(76, 48),
        ).merge(_getButtonStyle(color)),
      );

  @override
  Widget build(BuildContext context) => TextButton(
        style: style,
        key: key,
        onPressed: onPressed,
        onLongPress: onLongPress,
        clipBehavior: clipBehavior,
        child: child,
      );
}
