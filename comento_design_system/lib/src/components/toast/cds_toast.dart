import 'dart:ui';

import 'package:comento_design_system/comento_design_system.dart';
import 'package:flutter/material.dart';
import 'package:flutter_styled_toast/flutter_styled_toast.dart';

enum CdsToastPosition {
  top,
  bottom,
}

enum CdsToastType {
  basic,
  error,
  success,
}

class CdsToast {
  static const minDuration = Duration(milliseconds: 1000);

  static void show({
    required BuildContext context,
    required String message,
    CdsToastType? type = CdsToastType.basic,
    CdsToastPosition? position = CdsToastPosition.top,
    IconData? prefixIcon,
    Widget? suffix,
    Duration? duration = const Duration(milliseconds: 3000),
    Color? backgroundColor,
    Color? color,
    Color? iconColor,
    void Function()? onDismiss,
    TextStyle? textStyle,
    double? gap,
  }) {
    showToastWidget(
      _buildContent(
        message: message,
        type: type,
        prefixIcon: prefixIcon,
        suffix: suffix,
        backgroundColor: backgroundColor,
        color: color,
        iconColor: iconColor,
        textStyle: textStyle,
        gap: gap,
      ),
      context: context,
      position: _position(position),
      animation: _animation(position),
      curve: Curves.easeOutCirc,
      duration: duration != null && duration.compareTo(minDuration) < 0
          ? minDuration
          : duration,
      animDuration: Duration(milliseconds: 300),
      reverseAnimation: _reverseAnimation(position),
      reverseCurve: Curves.easeIn,
      startOffset: _startOffset(position),
      reverseEndOffset: _startOffset(position),
      endOffset: _endOffset(position),
      isIgnoring: false,
      onDismiss: onDismiss,
    );
  }

  static Offset _endOffset(CdsToastPosition? position) {
    switch (position) {
      case CdsToastPosition.bottom:
        return Offset(0, -0.16);
      case CdsToastPosition.top:
      default:
        return Offset(0, 0.32);
    }
  }

  static Offset _startOffset(CdsToastPosition? position) {
    switch (position) {
      case CdsToastPosition.bottom:
        return Offset(0, 0.1);
      case CdsToastPosition.top:
      default:
        return Offset(0, -0.2);
    }
  }

  static StyledToastPosition _position(CdsToastPosition? position) {
    switch (position) {
      case CdsToastPosition.bottom:
        return StyledToastPosition.bottom;
      case CdsToastPosition.top:
      default:
        return StyledToastPosition.top;
    }
  }

  static StyledToastAnimation _animation(CdsToastPosition? position) {
    switch (position) {
      case CdsToastPosition.bottom:
        return StyledToastAnimation.slideFromBottomFade;
      case CdsToastPosition.top:
      default:
        return StyledToastAnimation.slideFromTop;
    }
  }

  static StyledToastAnimation _reverseAnimation(CdsToastPosition? position) {
    switch (position) {
      case CdsToastPosition.bottom:
        return StyledToastAnimation.slideToBottomFade;
      case CdsToastPosition.top:
      default:
        return StyledToastAnimation.slideToTopFade;
    }
  }

  static Widget _buildContent({
    required String message,
    IconData? prefixIcon,
    Widget? suffix,
    CdsToastType? type,
    Color? backgroundColor,
    Color? color,
    Color? iconColor,
    TextStyle? textStyle,
    double? gap,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: CdsUI.widthPadding),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(8.0),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 15.0, sigmaY: 15.0),
          child: Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 17.5,
            ),
            decoration: BoxDecoration(
              color: _backgroundColor(type, backgroundColor),
              borderRadius: BorderRadius.circular(8.0),
              boxShadow: [
                BoxShadow(
                  color: CdsColors.black.withOpacity(0.06),
                  blurRadius: 7.0,
                  offset: Offset(0, 3),
                ),
              ],
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                if (prefixIcon != null)
                  Container(
                    margin: EdgeInsets.only(right: gap ?? 4.0),
                    width: 24.0,
                    height: 24.0,
                    child: Icon(
                      prefixIcon,
                      color: iconColor ?? _color(color),
                    ),
                  ),
                Text(
                  message,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: textStyle ??
                      CdsTextStyles.bodyText2.copyWith(
                        color: _color(color),
                      ),
                ),
                if (suffix != null) ...[
                  SizedBox(
                    width: gap ?? 4.0,
                  ),
                  suffix,
                ],
              ],
            ),
          ),
        ),
      ),
    );
  }

  static Color _color(Color? color) {
    if (color != null) {
      return color;
    }
    return CdsColors.white;
  }

  static Color _backgroundColor(CdsToastType? type, Color? backgroundColor) {
    if (backgroundColor != null) {
      return backgroundColor;
    }
    switch (type) {
      case CdsToastType.error:
        return CdsColors.error;
      case CdsToastType.success:
        return CdsColors.success;
      case CdsToastType.basic:
      default:
        return CdsColors.grey850;
    }
  }
}
