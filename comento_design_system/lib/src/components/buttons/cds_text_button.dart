import 'package:comento_design_system/comento_design_system.dart';
import 'package:flutter/material.dart';

enum CdsTextButtonColor {
  green,
  blue,
  grey,
  red,
}

class CdsTextButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final VoidCallback? onLongPress;
  final Clip clipBehavior;
  final String text;
  final ButtonStyle? style;
  final bool isEnabled;
  final bool isLoading;

  static ButtonStyle _getButtonStyle(CdsTextButtonColor? color) {
    Color primary;
    switch (color) {
      case CdsTextButtonColor.blue:
        primary = CdsColors.blue600;
        break;
      case CdsTextButtonColor.grey:
        primary = CdsColors.grey500;
        break;
      case CdsTextButtonColor.red:
        primary = CdsColors.red600;
        break;
      case CdsTextButtonColor.green:
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
    required this.text,
    required this.style,
    required this.isEnabled,
    required this.isLoading,
  }) : super(key: key);

  factory CdsTextButton.small({
    Key? key,
    required VoidCallback? onPressed,
    VoidCallback? onLongPress,
    Clip clipBehavior = Clip.none,
    CdsTextButtonColor? color,
    required String text,
    bool isEnabled = true,
    bool isLoading = false,
  }) =>
      CdsTextButton._(
        key: key,
        onPressed: onPressed,
        onLongPress: onLongPress,
        clipBehavior: clipBehavior,
        text: text,
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
        isEnabled: isEnabled,
        isLoading: isLoading,
      );

  factory CdsTextButton.medium({
    Key? key,
    required VoidCallback? onPressed,
    VoidCallback? onLongPress,
    Clip clipBehavior = Clip.none,
    CdsTextButtonColor? color,
    required String text,
    bool isEnabled = true,
    bool isLoading = false,
  }) =>
      CdsTextButton._(
        key: key,
        onPressed: onPressed,
        onLongPress: onLongPress,
        clipBehavior: clipBehavior,
        text: text,
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
        isEnabled: isEnabled,
        isLoading: isLoading,
      );

  factory CdsTextButton.large({
    Key? key,
    required VoidCallback? onPressed,
    VoidCallback? onLongPress,
    Clip clipBehavior = Clip.none,
    CdsTextButtonColor? color,
    required String text,
    bool isEnabled = true,
    bool isLoading = false,
  }) =>
      CdsTextButton._(
        key: key,
        onPressed: onPressed,
        onLongPress: onLongPress,
        clipBehavior: clipBehavior,
        text: text,
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
        isEnabled: isEnabled,
        isLoading: isLoading,
      );

  @override
  Widget build(BuildContext context) => TextButton(
        style: style,
        key: key,
        onPressed: isEnabled ? onPressed : null,
        onLongPress: onLongPress,
        clipBehavior: clipBehavior,
        child: isLoading
            ? CircularProgressIndicator(
                valueColor: AlwaysStoppedAnimation<Color>(CdsColors.white),
              )
            : Text(text),
      );
}
