import 'package:comento_design_system/comento_design_system.dart';
import 'package:flutter/material.dart';

class CdsTextButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final VoidCallback? onLongPress;
  final Clip clipBehavior;
  final Widget child;
  final ButtonStyle? style;

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
    CdsComponentColor color = CdsComponentColor.green,
    required String text,
    bool isEnabled = true,
    bool isLoading = false,
  }) =>
      CdsTextButton._(
        key: key,
        onPressed: isEnabled
            ? isLoading
                ? () {}
                : onPressed
            : null,
        onLongPress: onLongPress,
        clipBehavior: clipBehavior,
        child: isLoading
            ? CdsCircularProgressIndicator.small(color: color)
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
          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
        ).merge(_getButtonStyle(color)),
      );

  factory CdsTextButton.medium({
    Key? key,
    required VoidCallback? onPressed,
    VoidCallback? onLongPress,
    Clip clipBehavior = Clip.none,
    CdsComponentColor color = CdsComponentColor.green,
    required String text,
    bool isEnabled = true,
    bool isLoading = false,
  }) =>
      CdsTextButton._(
        key: key,
        onPressed: isEnabled
            ? isLoading
                ? () {}
                : onPressed
            : null,
        onLongPress: onLongPress,
        clipBehavior: clipBehavior,
        child: isLoading
            ? CdsCircularProgressIndicator.small(color: color)
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
          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
        ).merge(_getButtonStyle(color)),
      );

  factory CdsTextButton.large({
    Key? key,
    required VoidCallback? onPressed,
    VoidCallback? onLongPress,
    Clip clipBehavior = Clip.none,
    CdsComponentColor color = CdsComponentColor.green,
    required String text,
    bool isEnabled = true,
    bool isLoading = false,
  }) =>
      CdsTextButton._(
        key: key,
        onPressed: isEnabled
            ? isLoading
                ? () {}
                : onPressed
            : null,
        onLongPress: onLongPress,
        clipBehavior: clipBehavior,
        child: isLoading
            ? CdsCircularProgressIndicator.medium(color: color)
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
          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
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

  static ButtonStyle _getButtonStyle(CdsComponentColor color) {
    switch (color) {
      case CdsComponentColor.blue:
        return _getBlueButtonStyle();
      case CdsComponentColor.grey:
        return _getGreyButtonStyle();
      case CdsComponentColor.red:
        return _getRedButtonStyle();
      case CdsComponentColor.green:
      default:
        return _getGreenButtonStyle();
    }
  }

  static ButtonStyle _getGreenButtonStyle() {
    return ButtonStyle(
      foregroundColor: MaterialStateProperty.resolveWith((states) {
        if (states.contains(MaterialState.disabled)) return CdsColors.green100;
        return CdsColors.green600;
      }),
      overlayColor: MaterialStateProperty.resolveWith((states) {
        return CdsColors.green100;
      }),
      shape: MaterialStateProperty.all(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(CdsSizes.buttonRadius),
        ),
      ),
    );
  }

  static ButtonStyle _getGreyButtonStyle() {
    return ButtonStyle(
      foregroundColor: MaterialStateProperty.resolveWith((states) {
        if (states.contains(MaterialState.disabled)) return CdsColors.grey200;
        return CdsColors.grey500;
      }),
      overlayColor: MaterialStateProperty.resolveWith((states) {
        return CdsColors.grey100;
      }),
      shape: MaterialStateProperty.all(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(CdsSizes.buttonRadius),
        ),
      ),
    );
  }

  static ButtonStyle _getBlueButtonStyle() {
    return ButtonStyle(
      foregroundColor: MaterialStateProperty.resolveWith((states) {
        if (states.contains(MaterialState.disabled)) return CdsColors.blue100;
        return CdsColors.blue600;
      }),
      overlayColor: MaterialStateProperty.resolveWith((states) {
        return CdsColors.blue100;
      }),
      shape: MaterialStateProperty.all(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(CdsSizes.buttonRadius),
        ),
      ),
    );
  }

  static ButtonStyle _getRedButtonStyle() {
    return ButtonStyle(
      foregroundColor: MaterialStateProperty.resolveWith((states) {
        if (states.contains(MaterialState.disabled)) return CdsColors.red100;
        return CdsColors.red600;
      }),
      overlayColor: MaterialStateProperty.resolveWith((states) {
        return CdsColors.red000;
      }),
      shape: MaterialStateProperty.all(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(CdsSizes.buttonRadius),
        ),
      ),
    );
  }
}
