import 'dart:ui';

import 'package:comento_design_system/comento_design_system.dart';
import 'package:flutter/material.dart';

class CdsElevatedIconButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final VoidCallback? onLongPress;
  final Clip clipBehavior;
  final ButtonStyle? style;
  final Widget child;

  CdsElevatedIconButton._({
    Key? key,
    required this.onPressed,
    this.onLongPress,
    this.clipBehavior = Clip.none,
    required this.style,
    required this.child,
  }) : super(key: key);

  factory CdsElevatedIconButton.small({
    Key? key,
    required VoidCallback? onPressed,
    VoidCallback? onLongPress,
    Clip clipBehavior = Clip.none,
    CdsComponentColor color = CdsComponentColor.green,
    required String text,
    bool isEnabled = true,
    bool isLoading = false,
    required Widget icon,
  }) =>
      CdsElevatedIconButton._(
        key: key,
        onPressed: isEnabled
            ? isLoading
                ? () {}
                : onPressed
            : null,
        onLongPress: onLongPress,
        clipBehavior: clipBehavior,
        style: ElevatedButton.styleFrom(
          textStyle: CdsTextStyles.button.merge(
            TextStyle(
              fontSize: 10,
              fontWeight: FontWeight.w400,
            ),
          ),
          padding: EdgeInsets.only(left: 10.5, right: 8),
          minimumSize: const Size(36, 24),
        ).merge(_getButtonStyle(color)),
        child: isLoading
            ? CdsThickCircularProgressIndicator.small(color: color)
            : Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SizedBox(width: 7, height: 7, child: icon),
                  SizedBox(width: 4.5),
                  Text(text),
                ],
              ),
      );

  factory CdsElevatedIconButton.medium({
    Key? key,
    required VoidCallback? onPressed,
    VoidCallback? onLongPress,
    Clip clipBehavior = Clip.none,
    CdsComponentColor color = CdsComponentColor.green,
    required String text,
    bool isEnabled = true,
    bool isLoading = false,
    required Widget icon,
  }) =>
      CdsElevatedIconButton._(
        key: key,
        onPressed: isEnabled
            ? isLoading
                ? () {}
                : onPressed
            : null,
        onLongPress: onLongPress,
        clipBehavior: clipBehavior,
        style: ElevatedButton.styleFrom(
          textStyle: CdsTextStyles.button.merge(
            TextStyle(fontSize: 14),
          ),
          padding: EdgeInsets.only(left: 15.25, right: 12),
          minimumSize: const Size(60, 36),
        ).merge(_getButtonStyle(color)),
        child: isLoading
            ? CdsThickCircularProgressIndicator.small(color: color)
            : Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SizedBox(width: 11.5, height: 11.5, child: icon),
                  SizedBox(width: 5.25),
                  Text(text),
                ],
              ),
      );

  factory CdsElevatedIconButton.large({
    Key? key,
    required VoidCallback? onPressed,
    VoidCallback? onLongPress,
    Clip clipBehavior = Clip.none,
    CdsComponentColor color = CdsComponentColor.green,
    required String text,
    bool isEnabled = true,
    bool isLoading = false,
    required Widget icon,
  }) =>
      CdsElevatedIconButton._(
        key: key,
        onPressed: isEnabled
            ? isLoading
                ? () {}
                : onPressed
            : null,
        onLongPress: onLongPress,
        clipBehavior: clipBehavior,
        style: ElevatedButton.styleFrom(
          textStyle: CdsTextStyles.button.merge(
            TextStyle(fontSize: 16),
          ),
          padding: EdgeInsets.only(left: 16),
          minimumSize: const Size(76, 48),
        ).merge(_getButtonStyle(color)),
        child: isLoading
            ? CdsThickCircularProgressIndicator.medium(color: color)
            : Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SizedBox(width: 24, height: 24, child: icon),
                  SizedBox(width: 10),
                  Text(text),
                ],
              ),
      );

  factory CdsElevatedIconButton.largeFull({
    Key? key,
    required VoidCallback? onPressed,
    VoidCallback? onLongPress,
    Clip clipBehavior = Clip.none,
    CdsComponentColor color = CdsComponentColor.green,
    required String text,
    bool isEnabled = true,
    bool isLoading = false,
    required Widget icon,
  }) =>
      CdsElevatedIconButton._(
        key: key,
        onPressed: isEnabled
            ? isLoading
                ? () {}
                : onPressed
            : null,
        onLongPress: onLongPress,
        clipBehavior: clipBehavior,
        style: ElevatedButton.styleFrom(
          textStyle: CdsTextStyles.button.merge(
            TextStyle(fontSize: 16),
          ),
          padding: EdgeInsets.only(left: 16),
          minimumSize: const Size(76, 48),
        ).merge(_getButtonStyle(color)),
        child: isLoading
            ? CdsThickCircularProgressIndicator.medium(color: color)
            : Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(width: 24, height: 24, child: icon),
                  SizedBox(width: 10),
                  Text(text),
                ],
              ),
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

  static ButtonStyle _getButtonStyle(CdsComponentColor color) {
    var defaultButtonStyle = _getDefaultButtonStyle();
    return defaultButtonStyle.merge(
      {
        CdsComponentColor.blue: _getBlueButtonStyle(),
        CdsComponentColor.grey: _getGreyButtonStyle(),
        CdsComponentColor.green: _getGreenButtonStyle(),
        CdsComponentColor.kakao: _getKakaoButtonStyle(),
        CdsComponentColor.black: _getBlackButtonStyle(),
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

  static ButtonStyle _getGreyButtonStyle() {
    return ButtonStyle(
      foregroundColor: MaterialStateProperty.resolveWith((states) {
        if (states.contains(MaterialState.disabled)) return CdsColors.grey200;
        return CdsColors.grey700;
      }),
      backgroundColor: MaterialStateProperty.resolveWith((states) {
        if (states.contains(MaterialState.disabled)) return CdsColors.grey000;
        return CdsColors.grey100;
      }),
      overlayColor: MaterialStateProperty.all(CdsColors.grey200),
    );
  }

  static ButtonStyle _getKakaoButtonStyle() {
    return ButtonStyle(
      foregroundColor: MaterialStateProperty.resolveWith((states) {
        if (states.contains(MaterialState.disabled)) return CdsColors.grey200;
        return CdsColors.black;
      }),
      backgroundColor: MaterialStateProperty.resolveWith((states) {
        if (states.contains(MaterialState.disabled)) return CdsColors.grey000;
        return CdsColors.kakao;
      }),
      overlayColor: MaterialStateProperty.all(CdsColors.yellow400),
    );
  }

  static ButtonStyle _getBlackButtonStyle() {
    return ButtonStyle(
      foregroundColor: MaterialStateProperty.resolveWith((states) {
        if (states.contains(MaterialState.disabled)) return CdsColors.grey200;
        return CdsColors.white;
      }),
      backgroundColor: MaterialStateProperty.resolveWith((states) {
        if (states.contains(MaterialState.disabled)) return CdsColors.grey850;
        return CdsColors.black;
      }),
      overlayColor: MaterialStateProperty.all(CdsColors.grey600),
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
