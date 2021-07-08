import 'package:comento_design_system/comento_design_system.dart';
import 'package:flutter/material.dart';

enum CdsOutlinedButtonColor {
  green,
  blue,
  grey,
  red,
}

class CdsOutlinedButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final VoidCallback? onLongPress;
  final Clip clipBehavior;
  final String text;
  final ButtonStyle? style;
  final bool isEnabled;
  final bool isLoading;

  static ButtonStyle _getButtonStyle(CdsOutlinedButtonColor? color) {
    Color primary;
    Color borderColor;
    switch (color) {
      case CdsOutlinedButtonColor.blue:
        primary = borderColor = CdsColors.blue600;
        break;
      case CdsOutlinedButtonColor.grey:
        primary = CdsColors.grey500;
        borderColor = CdsColors.grey400;
        break;
      case CdsOutlinedButtonColor.red:
        primary = borderColor = CdsColors.red600;
        break;
      case CdsOutlinedButtonColor.green:
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
    required this.text,
    required this.style,
    required this.isEnabled,
    required this.isLoading,
  }) : super(key: key);

  factory CdsOutlinedButton.small({
    Key? key,
    required VoidCallback? onPressed,
    VoidCallback? onLongPress,
    Clip clipBehavior = Clip.none,
    CdsOutlinedButtonColor? color,
    required String text,
    bool isEnabled = true,
    bool isLoading = false,
  }) =>
      CdsOutlinedButton._(
        key: key,
        onPressed: onPressed,
        onLongPress: onLongPress,
        clipBehavior: clipBehavior,
        text: text,
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
        isEnabled: isEnabled,
        isLoading: isLoading,
      );

  factory CdsOutlinedButton.medium({
    Key? key,
    required VoidCallback? onPressed,
    VoidCallback? onLongPress,
    Clip clipBehavior = Clip.none,
    CdsOutlinedButtonColor? color,
    required String text,
    bool isEnabled = true,
    bool isLoading = false,
  }) =>
      CdsOutlinedButton._(
        key: key,
        onPressed: onPressed,
        onLongPress: onLongPress,
        clipBehavior: clipBehavior,
        text: text,
        style: OutlinedButton.styleFrom(
          textStyle: CdsTextStyles.button.merge(
            TextStyle(fontSize: 14),
          ),
          padding: EdgeInsets.symmetric(horizontal: 12),
          minimumSize: const Size(60, 36),
        ).merge(_getButtonStyle(color)),
        isEnabled: isEnabled,
        isLoading: isLoading,
      );

  factory CdsOutlinedButton.large({
    Key? key,
    required VoidCallback? onPressed,
    VoidCallback? onLongPress,
    Clip clipBehavior = Clip.none,
    CdsOutlinedButtonColor? color,
    required String text,
    bool isEnabled = true,
    bool isLoading = false,
  }) =>
      CdsOutlinedButton._(
        key: key,
        onPressed: onPressed,
        onLongPress: onLongPress,
        clipBehavior: clipBehavior,
        text: text,
        style: OutlinedButton.styleFrom(
          textStyle: CdsTextStyles.button.merge(
            TextStyle(fontSize: 16),
          ),
          padding: EdgeInsets.symmetric(horizontal: 14),
          minimumSize: const Size(76, 48),
        ).merge(_getButtonStyle(color)),
        isEnabled: isEnabled,
        isLoading: isLoading,
      );

  factory CdsOutlinedButton.largeFull({
    Key? key,
    required VoidCallback? onPressed,
    VoidCallback? onLongPress,
    Clip clipBehavior = Clip.none,
    CdsOutlinedButtonColor? color,
    required String text,
    bool isEnabled = true,
    bool isLoading = false,
  }) =>
      CdsOutlinedButton._(
        key: key,
        onPressed: onPressed,
        onLongPress: onLongPress,
        clipBehavior: clipBehavior,
        text: text,
        style: OutlinedButton.styleFrom(
          textStyle: CdsTextStyles.button.merge(
            TextStyle(fontSize: 16),
          ),
          padding: EdgeInsets.symmetric(horizontal: 14),
          minimumSize: const Size(double.infinity, 48),
        ).merge(_getButtonStyle(color)),
        isEnabled: isEnabled,
        isLoading: isLoading,
      );

  @override
  Widget build(BuildContext context) => OutlinedButton(
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
