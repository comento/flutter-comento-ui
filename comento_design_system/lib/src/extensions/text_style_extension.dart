import 'package:flutter/material.dart';

extension ExtendsTextStyle on TextStyle {
  TextStyle withColor(Color color) {
    return copyWith(color: color);
  }
}
