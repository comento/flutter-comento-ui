import 'dart:ui';

import 'package:comento_design_system/comento_design_system.dart';
import 'package:flutter/material.dart';

class CdsRatingButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final VoidCallback? onLongPress;
  final Clip clipBehavior;
  final Widget icon;
  final String text;
  final int rate;
  final ButtonStyle style;

  CdsRatingButton({
    Key? key,
    this.onPressed,
    this.onLongPress,
    this.clipBehavior = Clip.none,
    required this.icon,
    required this.text,
    required this.rate,
    CdsComponentColor color = CdsComponentColor.green,
  })  : style = TextButton.styleFrom(
          textStyle: CdsTextStyles.bodyText2,
          padding: EdgeInsets.zero,
          fixedSize: const Size(88, 28),
        ).merge(_getButtonStyle(color)),
        super(key: key);

  @override
  Widget build(BuildContext context) => TextButton(
        style: style,
        key: key,
        onPressed: onPressed,
        onLongPress: onLongPress,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            icon,
            SizedBox(width: 4),
            Text(text),
            SizedBox(width: 4),
            Text(rate.toString()),
          ],
        ),
      );

  static ButtonStyle _getButtonStyle(CdsComponentColor color) {
    switch (color) {
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
      foregroundColor: MaterialStateProperty.all(CdsColors.green600),
      shape: MaterialStateProperty.all(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(CdsUI.buttonRadius),
        ),
      ),
      elevation: MaterialStateProperty.all(0),
      overlayColor: MaterialStateProperty.all(CdsColors.green100),
    );
  }

  static ButtonStyle _getGreyButtonStyle() {
    return ButtonStyle(
      foregroundColor: MaterialStateProperty.all(CdsColors.grey400),
      shape: MaterialStateProperty.all(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(CdsUI.buttonRadius),
        ),
      ),
      elevation: MaterialStateProperty.all(0),
      overlayColor: MaterialStateProperty.all(CdsColors.grey100),
    );
  }

  static ButtonStyle _getRedButtonStyle() {
    return ButtonStyle(
      foregroundColor: MaterialStateProperty.all(CdsColors.red600),
      shape: MaterialStateProperty.all(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(CdsUI.buttonRadius),
        ),
      ),
      elevation: MaterialStateProperty.all(0),
      overlayColor: MaterialStateProperty.all(CdsColors.red000),
    );
  }
}
