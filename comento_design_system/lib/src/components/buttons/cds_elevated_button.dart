import 'package:comento_design_system/comento_design_system.dart';
import 'package:flutter/material.dart';

class CdsElevatedButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final VoidCallback? onLongPress;
  final Clip clipBehavior;
  final Widget child;
  final bool isToggled;
  final ButtonStyle? style;

  CdsElevatedButton._({
    Key? key,
    required this.onPressed,
    this.onLongPress,
    this.clipBehavior = Clip.none,
    required this.child,
    this.isToggled = false,
    required this.style,
  }) : super(key: key);

  factory CdsElevatedButton.small({
    Key? key,
    required VoidCallback? onPressed,
    VoidCallback? onLongPress,
    Clip clipBehavior = Clip.none,
    CdsComponentColor color = CdsComponentColor.blue,
    required String text,
    bool isEnabled = true,
    bool isLoading = false,
    bool isToggled = false,
  }) =>
      CdsElevatedButton._(
        key: key,
        onPressed: isEnabled
            ? isLoading
                ? () {}
                : onPressed
            : null,
        onLongPress: onLongPress,
        clipBehavior: clipBehavior,
        isToggled: isToggled,
        child: isLoading
            ? CdsThickCircularProgressIndicator.small(color: color)
            : Text(text),
        style: ElevatedButton.styleFrom(
          textStyle: CdsTextStyles.button.merge(
            TextStyle(
              fontSize: 10,
              fontWeight: FontWeight.w400,
            ),
          ),
          padding: EdgeInsets.symmetric(horizontal: 8),
          minimumSize: const Size(36, 24),
        ).merge(_getButtonStyle(color, isToggled)),
      );

  factory CdsElevatedButton.medium({
    Key? key,
    required VoidCallback? onPressed,
    VoidCallback? onLongPress,
    Clip clipBehavior = Clip.none,
    CdsComponentColor color = CdsComponentColor.blue,
    required String text,
    bool isEnabled = true,
    bool isLoading = false,
    bool isToggled = false,
  }) =>
      CdsElevatedButton._(
        key: key,
        onPressed: isEnabled
            ? isLoading
                ? () {}
                : onPressed
            : null,
        onLongPress: onLongPress,
        clipBehavior: clipBehavior,
        isToggled: isToggled,
        child: isLoading
            ? CdsThickCircularProgressIndicator.small(color: color)
            : Text(text),
        style: ElevatedButton.styleFrom(
          textStyle: CdsTextStyles.button.merge(
            TextStyle(fontSize: 14),
          ),
          padding: EdgeInsets.symmetric(horizontal: 12),
          minimumSize: const Size(60, 36),
        ).merge(_getButtonStyle(color, isToggled)),
      );

  factory CdsElevatedButton.mediumFull({
    Key? key,
    required VoidCallback? onPressed,
    VoidCallback? onLongPress,
    Clip clipBehavior = Clip.none,
    CdsComponentColor color = CdsComponentColor.blue,
    required String text,
    bool isEnabled = true,
    bool isLoading = false,
    bool isToggled = false,
  }) =>
      CdsElevatedButton._(
        key: key,
        onPressed: isEnabled
            ? isLoading
                ? () {}
                : onPressed
            : null,
        onLongPress: onLongPress,
        isToggled: isToggled,
        clipBehavior: clipBehavior,
        child: isLoading
            ? CdsThickCircularProgressIndicator.small(color: color)
            : Text(text),
        style: ElevatedButton.styleFrom(
          textStyle: CdsTextStyles.button.merge(
            TextStyle(fontSize: 14),
          ),
          padding: EdgeInsets.symmetric(horizontal: 12),
          minimumSize: const Size(double.infinity, 36),
        ).merge(_getButtonStyle(color, isToggled)),
      );

  factory CdsElevatedButton.large({
    Key? key,
    required VoidCallback? onPressed,
    VoidCallback? onLongPress,
    Clip clipBehavior = Clip.none,
    CdsComponentColor color = CdsComponentColor.blue,
    required String text,
    bool isEnabled = true,
    bool isLoading = false,
    bool isToggled = false,
  }) =>
      CdsElevatedButton._(
        key: key,
        onPressed: isEnabled
            ? isLoading
                ? () {}
                : onPressed
            : null,
        onLongPress: onLongPress,
        isToggled: isToggled,
        clipBehavior: clipBehavior,
        child: isLoading
            ? CdsThickCircularProgressIndicator.medium(color: color)
            : Text(text),
        style: ElevatedButton.styleFrom(
          textStyle: CdsTextStyles.button.merge(
            TextStyle(fontSize: 16),
          ),
          padding: EdgeInsets.symmetric(horizontal: 18),
          minimumSize: const Size(76, 48),
        ).merge(_getButtonStyle(color, isToggled)),
      );

  factory CdsElevatedButton.largeFull({
    Key? key,
    required VoidCallback? onPressed,
    VoidCallback? onLongPress,
    Clip clipBehavior = Clip.none,
    CdsComponentColor color = CdsComponentColor.blue,
    required String text,
    bool isEnabled = true,
    bool isLoading = false,
    bool isToggled = false,
  }) =>
      CdsElevatedButton._(
        key: key,
        onPressed: isEnabled
            ? isLoading
                ? () {}
                : onPressed
            : null,
        onLongPress: onLongPress,
        isToggled: isToggled,
        clipBehavior: clipBehavior,
        child: isLoading
            ? CdsThickCircularProgressIndicator.medium(color: color)
            : Text(text),
        style: ElevatedButton.styleFrom(
          textStyle: CdsTextStyles.button.merge(
            TextStyle(fontSize: 16),
          ),
          padding: EdgeInsets.symmetric(horizontal: 18),
          minimumSize: const Size(double.infinity, 48),
        ).merge(_getButtonStyle(color, isToggled)),
      );

  factory CdsElevatedButton.xLargeFull({
    Key? key,
    required VoidCallback? onPressed,
    VoidCallback? onLongPress,
    Clip clipBehavior = Clip.none,
    CdsComponentColor color = CdsComponentColor.blue,
    required String text,
    bool isEnabled = true,
    bool isLoading = false,
    bool isToggled = false,
  }) =>
      CdsElevatedButton._(
        key: key,
        onPressed: isEnabled
            ? isLoading
                ? () {}
                : onPressed
            : null,
        onLongPress: onLongPress,
        isToggled: isToggled,
        clipBehavior: clipBehavior,
        child: isLoading
            ? CdsThickCircularProgressIndicator.large(color: color)
            : Text(text),
        style: ElevatedButton.styleFrom(
          textStyle: CdsTextStyles.headline7,
          padding: EdgeInsets.symmetric(horizontal: 26),
          minimumSize: const Size(double.infinity, 60),
        ).merge(_getButtonStyle(color, isToggled)),
      );

  factory CdsElevatedButton.titleLargeFull({
    Key? key,
    required VoidCallback? onPressed,
    VoidCallback? onLongPress,
    Clip clipBehavior = Clip.none,
    CdsComponentColor color = CdsComponentColor.blue,
    required String title,
    required Widget child,
    bool isEnabled = true,
    bool isLoading = false,
    bool isToggled = false,
  }) =>
      CdsElevatedButton._(
        key: key,
        onPressed: isEnabled
            ? isLoading
                ? () {}
                : onPressed
            : null,
        onLongPress: onLongPress,
        isToggled: isToggled,
        clipBehavior: clipBehavior,
        child: isLoading
            ? CdsThickCircularProgressIndicator.large(color: color)
            : Row(
                children: [
                  Text(title),
                  SizedBox(width: 8),
                  child,
                ],
              ),
        style: ElevatedButton.styleFrom(
          textStyle: CdsTextStyles.headline7,
          padding: EdgeInsets.symmetric(horizontal: 26),
          minimumSize: const Size(double.infinity, 60),
        ).merge(_getButtonStyle(color, isToggled)),
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

  static ButtonStyle _getButtonStyle(CdsComponentColor color, bool isToggled) {
    var defaultButtonStyle = _getDefaultButtonStyle();
    return defaultButtonStyle.merge(
      {
        CdsComponentColor.blue: _getBlueButtonStyle(),
        CdsComponentColor.grey: _getGreyButtonStyle(isToggled),
        CdsComponentColor.green: _getGreenButtonStyle(),
      }[color],
    );
  }

  static ButtonStyle _getDefaultButtonStyle() {
    return ButtonStyle(
      shape: MaterialStateProperty.all(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
      ),
      elevation: MaterialStateProperty.all(0),
    );
  }

  static ButtonStyle _getGreenButtonStyle() {
    return ButtonStyle(
      foregroundColor: MaterialStateProperty.resolveWith((states) {
        if (states.contains(MaterialState.disabled)) return CdsColors.white;
        return CdsColors.white;
      }),
      backgroundColor: MaterialStateProperty.resolveWith((states) {
        if (states.contains(MaterialState.disabled)) return CdsColors.green100;
        return CdsColors.green600;
      }),
      overlayColor: MaterialStateProperty.all(CdsColors.green800),
    );
  }

  static ButtonStyle _getGreyButtonStyle(bool isToggled) {
    return ButtonStyle(
      foregroundColor: MaterialStateProperty.resolveWith((states) {
        if (states.contains(MaterialState.disabled)) return CdsColors.grey200;
        if (isToggled) return CdsColors.blue600;
        return CdsColors.grey600;
      }),
      backgroundColor: MaterialStateProperty.resolveWith((states) {
        if (states.contains(MaterialState.disabled)) return CdsColors.grey000;
        if (isToggled) return CdsColors.blue100;
        return CdsColors.grey100;
      }),
      overlayColor: MaterialStateProperty.resolveWith((states) {
        if (isToggled) return CdsColors.blue200;
        return CdsColors.grey200;
      }),
    );
  }

  static ButtonStyle _getBlueButtonStyle() {
    return ButtonStyle(
      foregroundColor: MaterialStateProperty.resolveWith((states) {
        if (states.contains(MaterialState.disabled)) return CdsColors.white;
        return CdsColors.white;
      }),
      backgroundColor: MaterialStateProperty.resolveWith((states) {
        if (states.contains(MaterialState.disabled)) return CdsColors.blue100;
        return CdsColors.blue600;
      }),
      overlayColor: MaterialStateProperty.all(CdsColors.blue800),
    );
  }
}
