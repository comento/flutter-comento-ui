import 'package:comento_design_system/comento_design_system.dart';
import 'package:flutter/material.dart';

enum CdsElevatedButtonColor {
  green,
  blue,
  grey,
}

class CdsElevatedButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final VoidCallback? onLongPress;
  final FocusNode? focusNode;
  final bool autofocus;
  final Clip clipBehavior;
  final Widget? child;
  final ButtonStyle? style;

  static final _defaultStyle = ElevatedButton.styleFrom(
    elevation: 0,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(CdsSizes.buttonRadius),
    ),
  );

  static ButtonStyle _getStyleByColor(CdsElevatedButtonColor? color) {
    Color primary;
    Color onPrimary;
    switch (color) {
      case CdsElevatedButtonColor.blue:
        primary = CdsColors.blue600;
        onPrimary = CdsColors.white;
        break;
      case CdsElevatedButtonColor.grey:
        primary = CdsColors.grey100;
        onPrimary = CdsColors.grey700;
        break;
      case CdsElevatedButtonColor.green:
      default:
        primary = CdsColors.green600;
        onPrimary = CdsColors.white;
    }
    return ElevatedButton.styleFrom(
      primary: primary,
      onPrimary: onPrimary,
    );
  }

  CdsElevatedButton._({
    Key? key,
    required this.onPressed,
    this.onLongPress,
    this.focusNode,
    this.autofocus = false,
    this.clipBehavior = Clip.none,
    required this.child,
    required ButtonStyle style,
  })  : this.style = style.merge(_defaultStyle),
        super(key: key);

  factory CdsElevatedButton.small({
    Key? key,
    required VoidCallback? onPressed,
    VoidCallback? onLongPress,
    FocusNode? focusNode,
    bool autofocus = false,
    Clip clipBehavior = Clip.none,
    CdsElevatedButtonColor? color,
    required Widget? child,
  }) =>
      CdsElevatedButton._(
        key: key,
        onPressed: onPressed,
        onLongPress: onLongPress,
        focusNode: focusNode,
        autofocus: autofocus,
        clipBehavior: clipBehavior,
        child: child,
        style: ElevatedButton.styleFrom(
          textStyle: CdsTextStyles.button.merge(
            TextStyle(
              fontSize: 10,
              fontWeight: FontWeight.w400,
            ),
          ),
          padding: EdgeInsets.symmetric(horizontal: 8),
          minimumSize: const Size(36, 24),
        ).merge(_getStyleByColor(color)),
      );

  factory CdsElevatedButton.medium({
    Key? key,
    required VoidCallback? onPressed,
    VoidCallback? onLongPress,
    FocusNode? focusNode,
    bool autofocus = false,
    Clip clipBehavior = Clip.none,
    CdsElevatedButtonColor? color,
    required Widget? child,
  }) =>
      CdsElevatedButton._(
        key: key,
        onPressed: onPressed,
        onLongPress: onLongPress,
        focusNode: focusNode,
        autofocus: autofocus,
        clipBehavior: clipBehavior,
        child: child,
        style: ElevatedButton.styleFrom(
          textStyle: CdsTextStyles.button.merge(
            TextStyle(fontSize: 14),
          ),
          padding: EdgeInsets.symmetric(horizontal: 12),
          minimumSize: const Size(60, 36),
        ).merge(_getStyleByColor(color)),
      );

  factory CdsElevatedButton.large({
    Key? key,
    required VoidCallback? onPressed,
    VoidCallback? onLongPress,
    FocusNode? focusNode,
    bool autofocus = false,
    Clip clipBehavior = Clip.none,
    CdsElevatedButtonColor? color,
    required Widget? child,
  }) =>
      CdsElevatedButton._(
        key: key,
        onPressed: onPressed,
        onLongPress: onLongPress,
        focusNode: focusNode,
        autofocus: autofocus,
        clipBehavior: clipBehavior,
        child: child,
        style: ElevatedButton.styleFrom(
          textStyle: CdsTextStyles.button.merge(
            TextStyle(fontSize: 16),
          ),
          padding: EdgeInsets.symmetric(horizontal: 14),
          minimumSize: const Size(76, 48),
        ).merge(_getStyleByColor(color)),
      );

  factory CdsElevatedButton.largeFull({
    Key? key,
    required VoidCallback? onPressed,
    VoidCallback? onLongPress,
    FocusNode? focusNode,
    bool autofocus = false,
    Clip clipBehavior = Clip.none,
    CdsElevatedButtonColor? color,
    required Widget? child,
  }) =>
      CdsElevatedButton._(
        key: key,
        onPressed: onPressed,
        onLongPress: onLongPress,
        focusNode: focusNode,
        autofocus: autofocus,
        clipBehavior: clipBehavior,
        child: child,
        style: ElevatedButton.styleFrom(
          textStyle: CdsTextStyles.button.merge(
            TextStyle(fontSize: 16),
          ),
          padding: EdgeInsets.symmetric(horizontal: 14),
          minimumSize: const Size(double.infinity, 48),
        ).merge(_getStyleByColor(color)),
      );

  @override
  Widget build(BuildContext context) => ButtonTheme(
        child: ElevatedButton(
          style: style,
          key: key,
          onPressed: onPressed,
          onLongPress: onLongPress,
          focusNode: focusNode,
          autofocus: autofocus,
          clipBehavior: clipBehavior,
          child: child,
        ),
      );
}
