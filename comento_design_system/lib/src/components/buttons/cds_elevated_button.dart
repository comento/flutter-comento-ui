import 'package:comento_design_system/comento_design_system.dart';
import 'package:flutter/material.dart';

class CdsElevatedButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final VoidCallback? onLongPress;
  final FocusNode? focusNode;
  final bool autofocus;
  final Clip clipBehavior;
  final Color color;
  final Widget? child;

  CdsElevatedButton({
    Key? key,
    required this.onPressed,
    this.onLongPress,
    this.focusNode,
    this.autofocus = false,
    this.clipBehavior = Clip.none,
    this.color = CdsColors.comento,
    required this.child,
  }) : super(key: key);

  factory CdsElevatedButton.medium({
    Key? key,
    required VoidCallback? onPressed,
    VoidCallback? onLongPress,
    FocusNode? focusNode,
    bool autofocus = false,
    Clip clipBehavior = Clip.none,
    Color color = CdsColors.comento,
    required Widget? child,
  }) =>
      CdsElevatedButton(
        key: key,
        onPressed: onPressed,
        onLongPress: onLongPress,
        focusNode: focusNode,
        autofocus: autofocus,
        clipBehavior: clipBehavior,
        color: color,
        child: child,
      );

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        textStyle: CdsTextStyles.button,
        primary: CdsColors.comento,
        onPrimary: CdsColors.white,
        elevation: 0,
        minimumSize: const Size(double.infinity, 48),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(CdsSizes.buttonRadius),
        ),
        onSurface: CdsColors.green400,
      ),
      key: key,
      onPressed: onPressed,
      onLongPress: onLongPress,
      focusNode: focusNode,
      autofocus: autofocus,
      clipBehavior: clipBehavior,
      child: child,
    );
  }
}
