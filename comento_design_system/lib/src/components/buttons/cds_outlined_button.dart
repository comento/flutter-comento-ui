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
    CdsComponentColor color = CdsComponentColor.blue,
    required String text,
    Widget? leading,
    Widget? trailing,
    double? leadingMargin,
    double? trailingMargin,
    bool isEnabled = true,
    bool isLoading = false,
  }) {
    Widget printChild = _buildChild(
      isLoading: isLoading,
      loadingIndicator: CdsCircularProgressIndicator.small(color: color),
      leading: leading,
      trailing: trailing,
      leadingMargin: leadingMargin,
      trailingMargin: trailingMargin,
      text: text,
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
    CdsComponentColor color = CdsComponentColor.blue,
    required String text,
    Widget? leading,
    Widget? trailing,
    double? leadingMargin,
    double? trailingMargin,
    bool isEnabled = true,
    bool isLoading = false,
  }) {
    Widget printChild = _buildChild(
      isLoading: isLoading,
      loadingIndicator: CdsCircularProgressIndicator.small(color: color),
      leading: leading,
      trailing: trailing,
      leadingMargin: leadingMargin,
      trailingMargin: trailingMargin,
      text: text,
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
          TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
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
    CdsComponentColor color = CdsComponentColor.blue,
    required String text,
    Widget? leading,
    Widget? trailing,
    double? leadingMargin,
    double? trailingMargin,
    bool isEnabled = true,
    bool isLoading = false,
  }) {
    Widget printChild = _buildChild(
      isLoading: isLoading,
      loadingIndicator: CdsCircularProgressIndicator.small(color: color),
      leading: leading,
      trailing: trailing,
      leadingMargin: leadingMargin,
      trailingMargin: trailingMargin,
      text: text,
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
          TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
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
    CdsComponentColor color = CdsComponentColor.blue,
    required String text,
    Widget? leading,
    Widget? trailing,
    double? leadingMargin,
    double? trailingMargin,
    bool isEnabled = true,
    bool isLoading = false,
  }) {
    Widget printChild = _buildChild(
      isLoading: isLoading,
      loadingIndicator: CdsCircularProgressIndicator.medium(color: color),
      leading: leading,
      trailing: trailing,
      leadingMargin: leadingMargin,
      trailingMargin: trailingMargin,
      text: text,
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
          TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
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
    CdsComponentColor color = CdsComponentColor.blue,
    required String text,
    Widget? leading,
    Widget? trailing,
    double? leadingMargin,
    double? trailingMargin,
    bool isEnabled = true,
    bool isLoading = false,
  }) {
    Widget printChild = _buildChild(
      isLoading: isLoading,
      loadingIndicator: CdsCircularProgressIndicator.medium(color: color),
      leading: leading,
      trailing: trailing,
      leadingMargin: leadingMargin,
      trailingMargin: trailingMargin,
      text: text,
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
          TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
        ),
        padding: EdgeInsets.symmetric(horizontal: 14),
        minimumSize: const Size(double.infinity, 48),
      ).merge(_getButtonStyle(color)),
    );
  }

  static Widget _buildChild({
    required bool isLoading,
    required Widget loadingIndicator,
    Widget? leading,
    Widget? trailing,
    double? leadingMargin,
    double? trailingMargin,
    required String text,
  }) {
    Widget printChild = isLoading
        ? loadingIndicator
        : leading != null || trailing != null
            ? Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  if (leading != null) ...[
                    leading,
                    SizedBox(width: leadingMargin),
                  ],
                  Text(text),
                  if (trailing != null) ...[
                    SizedBox(width: trailingMargin),
                    trailing,
                  ],
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
      foregroundColor: WidgetStateProperty.resolveWith((states) {
        if (states.contains(WidgetState.disabled)) return CdsColors.green100;
        return CdsColors.green600;
      }),
      side: WidgetStateProperty.resolveWith((states) {
        if (states.contains(WidgetState.disabled))
          return BorderSide(color: CdsColors.green100);
        return BorderSide(color: CdsColors.green600);
      }),
      overlayColor: WidgetStateProperty.resolveWith((states) {
        return CdsColors.green100;
      }),
      shape: WidgetStateProperty.all(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(CdsUI.buttonRadius),
        ),
      ),
      backgroundColor: WidgetStateProperty.all(CdsColors.white),
      elevation: WidgetStateProperty.all(0),
    );
  }

  static ButtonStyle _getGreyButtonStyle() {
    return ButtonStyle(
      tapTargetSize: MaterialTapTargetSize.shrinkWrap,
      foregroundColor: WidgetStateProperty.resolveWith((states) {
        if (states.contains(WidgetState.disabled)) return CdsColors.grey100;
        return CdsColors.grey600;
      }),
      side: WidgetStateProperty.resolveWith((states) {
        if (states.contains(WidgetState.disabled))
          return BorderSide(color: CdsColors.grey100);
        return BorderSide(color: CdsColors.grey400);
      }),
      overlayColor: WidgetStateProperty.resolveWith((states) {
        return CdsColors.grey100;
      }),
      shape: WidgetStateProperty.all(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(CdsUI.buttonRadius),
        ),
      ),
      backgroundColor: WidgetStateProperty.all(CdsColors.white),
      elevation: WidgetStateProperty.all(0),
    );
  }

  static ButtonStyle _getBlueButtonStyle() {
    return ButtonStyle(
      tapTargetSize: MaterialTapTargetSize.shrinkWrap,
      foregroundColor: WidgetStateProperty.resolveWith((states) {
        if (states.contains(WidgetState.disabled)) return CdsColors.blue100;
        return CdsColors.blue600;
      }),
      side: WidgetStateProperty.resolveWith((states) {
        if (states.contains(WidgetState.disabled))
          return BorderSide(color: CdsColors.blue100);
        return BorderSide(color: CdsColors.blue600);
      }),
      overlayColor: WidgetStateProperty.resolveWith((states) {
        return CdsColors.blue000;
      }),
      shape: WidgetStateProperty.all(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(CdsUI.buttonRadius),
        ),
      ),
      backgroundColor: WidgetStateProperty.all(CdsColors.white),
      elevation: WidgetStateProperty.all(0),
    );
  }

  static ButtonStyle _getRedButtonStyle() {
    return ButtonStyle(
      tapTargetSize: MaterialTapTargetSize.shrinkWrap,
      foregroundColor: WidgetStateProperty.resolveWith((states) {
        if (states.contains(WidgetState.disabled)) return CdsColors.red100;
        return CdsColors.red600;
      }),
      side: WidgetStateProperty.resolveWith((states) {
        if (states.contains(WidgetState.disabled))
          return BorderSide(color: CdsColors.red100);
        return BorderSide(color: CdsColors.red600);
      }),
      overlayColor: WidgetStateProperty.resolveWith((states) {
        return CdsColors.red000;
      }),
      shape: WidgetStateProperty.all(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(CdsUI.buttonRadius),
        ),
      ),
      backgroundColor: WidgetStateProperty.all(CdsColors.white),
      elevation: WidgetStateProperty.all(0),
    );
  }
}
