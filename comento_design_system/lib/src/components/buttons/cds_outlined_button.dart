import 'package:comento_design_system/comento_design_system.dart';
import 'package:flutter/material.dart';

class CdsOutlinedButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final VoidCallback? onLongPress;
  final Clip clipBehavior;
  final Widget child;
  final ButtonStyle? style;

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
    CdsComponentColor color = CdsComponentColor.green,
    required String text,
    Widget? icon,
    double? iconMargin,
    bool isEnabled = true,
    bool isLoading = false,
  }) {
    Widget printChild = _buildChild(
      isLoading: isLoading,
      loadingIndicator: CdsCircularProgressIndicator.small(color: color),
      icon: icon,
      text: text,
      iconMargin: iconMargin,
    );
    return CdsOutlinedButton._(
      key: key,
      onPressed: isEnabled
          ? isLoading
              ? () {}
              : onPressed
          : null,
      onLongPress: onLongPress,
      clipBehavior: clipBehavior,
      child: printChild,
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
  }

  factory CdsOutlinedButton.medium({
    Key? key,
    required VoidCallback? onPressed,
    VoidCallback? onLongPress,
    Clip clipBehavior = Clip.none,
    CdsComponentColor color = CdsComponentColor.green,
    required String text,
    Widget? icon,
    double? iconMargin,
    bool isEnabled = true,
    bool isLoading = false,
  }) {
    Widget printChild = _buildChild(
      isLoading: isLoading,
      loadingIndicator: CdsCircularProgressIndicator.small(color: color),
      icon: icon,
      text: text,
      iconMargin: iconMargin,
    );
    return CdsOutlinedButton._(
      key: key,
      onPressed: isEnabled
          ? isLoading
              ? () {}
              : onPressed
          : null,
      onLongPress: onLongPress,
      clipBehavior: clipBehavior,
      child: printChild,
      style: OutlinedButton.styleFrom(
        textStyle: CdsTextStyles.button.merge(
          TextStyle(fontSize: 14),
        ),
        padding: EdgeInsets.symmetric(horizontal: 12),
        minimumSize: const Size(60, 36),
      ).merge(_getButtonStyle(color)),
    );
  }

  factory CdsOutlinedButton.mediumFull({
    Key? key,
    required VoidCallback? onPressed,
    VoidCallback? onLongPress,
    Clip clipBehavior = Clip.none,
    CdsComponentColor color = CdsComponentColor.green,
    required String text,
    Widget? icon,
    double? iconMargin,
    bool isEnabled = true,
    bool isLoading = false,
  }) {
    Widget printChild = _buildChild(
      isLoading: isLoading,
      loadingIndicator: CdsCircularProgressIndicator.small(color: color),
      icon: icon,
      text: text,
      iconMargin: iconMargin,
    );
    return CdsOutlinedButton._(
      key: key,
      onPressed: isEnabled
          ? isLoading
              ? () {}
              : onPressed
          : null,
      onLongPress: onLongPress,
      clipBehavior: clipBehavior,
      child: printChild,
      style: OutlinedButton.styleFrom(
        textStyle: CdsTextStyles.button.merge(
          TextStyle(fontSize: 14),
        ),
        padding: EdgeInsets.symmetric(horizontal: 12),
        minimumSize: const Size(double.infinity, 36),
      ).merge(_getButtonStyle(color)),
    );
  }

  factory CdsOutlinedButton.large({
    Key? key,
    required VoidCallback? onPressed,
    VoidCallback? onLongPress,
    Clip clipBehavior = Clip.none,
    CdsComponentColor color = CdsComponentColor.green,
    required String text,
    Widget? icon,
    double? iconMargin,
    bool isEnabled = true,
    bool isLoading = false,
  }) {
    Widget printChild = _buildChild(
      isLoading: isLoading,
      loadingIndicator: CdsCircularProgressIndicator.medium(color: color),
      icon: icon,
      text: text,
      iconMargin: iconMargin,
    );
    return CdsOutlinedButton._(
      key: key,
      onPressed: isEnabled
          ? isLoading
              ? () {}
              : onPressed
          : null,
      onLongPress: onLongPress,
      clipBehavior: clipBehavior,
      child: printChild,
      style: OutlinedButton.styleFrom(
        textStyle: CdsTextStyles.button.merge(
          TextStyle(fontSize: 16),
        ),
        padding: EdgeInsets.symmetric(horizontal: 14),
        minimumSize: const Size(76, 48),
      ).merge(_getButtonStyle(color)),
    );
  }

  factory CdsOutlinedButton.largeFull({
    Key? key,
    required VoidCallback? onPressed,
    VoidCallback? onLongPress,
    Clip clipBehavior = Clip.none,
    CdsComponentColor color = CdsComponentColor.green,
    required String text,
    Widget? icon,
    double? iconMargin,
    bool isEnabled = true,
    bool isLoading = false,
  }) {
    Widget printChild = _buildChild(
      isLoading: isLoading,
      loadingIndicator: CdsCircularProgressIndicator.medium(color: color),
      icon: icon,
      text: text,
      iconMargin: iconMargin,
    );
    return CdsOutlinedButton._(
      key: key,
      onPressed: isEnabled
          ? isLoading
              ? () {}
              : onPressed
          : null,
      onLongPress: onLongPress,
      clipBehavior: clipBehavior,
      child: printChild,
      style: OutlinedButton.styleFrom(
        textStyle: CdsTextStyles.button.merge(
          TextStyle(fontSize: 16),
        ),
        padding: EdgeInsets.symmetric(horizontal: 14),
        minimumSize: const Size(double.infinity, 48),
      ).merge(_getButtonStyle(color)),
    );
  }

  static Widget _buildChild({
    required bool isLoading,
    required Widget loadingIndicator,
    Widget? icon,
    required String text,
    double? iconMargin,
  }) {
    Widget printChild = isLoading
        ? loadingIndicator
        : icon != null
            ? Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  icon,
                  SizedBox(width: iconMargin),
                  Text(text),
                ],
              )
            : Text(text);
    return printChild;
  }

  @override
  Widget build(BuildContext context) => OutlinedButton(
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
      tapTargetSize: MaterialTapTargetSize.shrinkWrap,
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
          borderRadius: BorderRadius.circular(CdsUI.buttonRadius),
        ),
      ),
      backgroundColor: MaterialStateProperty.all(CdsColors.white),
      elevation: MaterialStateProperty.all(0),
    );
  }

  static ButtonStyle _getGreyButtonStyle() {
    return ButtonStyle(
      tapTargetSize: MaterialTapTargetSize.shrinkWrap,
      foregroundColor: MaterialStateProperty.resolveWith((states) {
        if (states.contains(MaterialState.disabled)) return CdsColors.grey100;
        return CdsColors.grey600;
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
          borderRadius: BorderRadius.circular(CdsUI.buttonRadius),
        ),
      ),
      backgroundColor: MaterialStateProperty.all(CdsColors.white),
      elevation: MaterialStateProperty.all(0),
    );
  }

  static ButtonStyle _getBlueButtonStyle() {
    return ButtonStyle(
      tapTargetSize: MaterialTapTargetSize.shrinkWrap,
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
          borderRadius: BorderRadius.circular(CdsUI.buttonRadius),
        ),
      ),
      backgroundColor: MaterialStateProperty.all(CdsColors.white),
      elevation: MaterialStateProperty.all(0),
    );
  }

  static ButtonStyle _getRedButtonStyle() {
    return ButtonStyle(
      tapTargetSize: MaterialTapTargetSize.shrinkWrap,
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
          borderRadius: BorderRadius.circular(CdsUI.buttonRadius),
        ),
      ),
      backgroundColor: MaterialStateProperty.all(CdsColors.white),
      elevation: MaterialStateProperty.all(0),
    );
  }
}
