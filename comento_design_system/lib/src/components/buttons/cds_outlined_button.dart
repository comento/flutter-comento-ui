import 'package:comento_design_system/comento_design_system.dart';
import 'package:flutter/material.dart';

class CdsOutlinedButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final VoidCallback? onLongPress;
  final Clip clipBehavior;
  final Widget child;
  final ButtonStyle? style;

  static ButtonStyle _getButtonStyle(ComponentColor color) {
    switch (color) {
      case ComponentColor.blue:
        return _getBlueButtonStyle();
      case ComponentColor.grey:
        return _getGreyButtonStyle();
      case ComponentColor.red:
        return _getRedButtonStyle();
      case ComponentColor.green:
      default:
        return _getGreenButtonStyle();
    }
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

  static ButtonStyle _getGreenButtonStyle() {
    return ButtonStyle(
      foregroundColor: MaterialStateProperty.resolveWith((states) {
        if (states.contains(MaterialState.disabled)) return CdsColors.green100;
        return CdsColors.green600;
      }),
      side: MaterialStateProperty.resolveWith((states) {
        if (states.contains(MaterialState.disabled))
          return BorderSide(color: CdsColors.green100);
        return BorderSide(color: CdsColors.green600);
      }),
      overlayColor: MaterialStateProperty.resolveWith((states) {
        return CdsColors.green100;
      }),
      shape: MaterialStateProperty.all(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(CdsSizes.buttonRadius),
        ),
      ),
      backgroundColor: MaterialStateProperty.all(CdsColors.white),
      elevation: MaterialStateProperty.all(0),
    );
  }

  static ButtonStyle _getGreyButtonStyle() {
    return ButtonStyle(
      foregroundColor: MaterialStateProperty.resolveWith((states) {
        if (states.contains(MaterialState.disabled)) return CdsColors.grey100;
        return CdsColors.grey500;
      }),
      side: MaterialStateProperty.resolveWith((states) {
        if (states.contains(MaterialState.disabled))
          return BorderSide(color: CdsColors.grey100);
        return BorderSide(color: CdsColors.grey400);
      }),
      overlayColor: MaterialStateProperty.resolveWith((states) {
        return CdsColors.grey100;
      }),
      shape: MaterialStateProperty.all(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(CdsSizes.buttonRadius),
        ),
      ),
      backgroundColor: MaterialStateProperty.all(CdsColors.white),
      elevation: MaterialStateProperty.all(0),
    );
  }

  static ButtonStyle _getBlueButtonStyle() {
    return ButtonStyle(
      foregroundColor: MaterialStateProperty.resolveWith((states) {
        if (states.contains(MaterialState.disabled)) return CdsColors.blue100;
        return CdsColors.blue600;
      }),
      side: MaterialStateProperty.resolveWith((states) {
        if (states.contains(MaterialState.disabled))
          return BorderSide(color: CdsColors.blue100);
        return BorderSide(color: CdsColors.blue600);
      }),
      overlayColor: MaterialStateProperty.resolveWith((states) {
        return CdsColors.blue000;
      }),
      shape: MaterialStateProperty.all(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(CdsSizes.buttonRadius),
        ),
      ),
      backgroundColor: MaterialStateProperty.all(CdsColors.white),
      elevation: MaterialStateProperty.all(0),
    );
  }

  static ButtonStyle _getRedButtonStyle() {
    return ButtonStyle(
      foregroundColor: MaterialStateProperty.resolveWith((states) {
        if (states.contains(MaterialState.disabled)) return CdsColors.red100;
        return CdsColors.red600;
      }),
      side: MaterialStateProperty.resolveWith((states) {
        if (states.contains(MaterialState.disabled))
          return BorderSide(color: CdsColors.red100);
        return BorderSide(color: CdsColors.red600);
      }),
      overlayColor: MaterialStateProperty.resolveWith((states) {
        return CdsColors.red000;
      }),
      shape: MaterialStateProperty.all(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(CdsSizes.buttonRadius),
        ),
      ),
      backgroundColor: MaterialStateProperty.all(CdsColors.white),
      elevation: MaterialStateProperty.all(0),
    );
  }
}
