import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../strings.dart';
import 'cds_colors.dart';

class CdsTextStyles {
  CdsTextStyles._();

  static const TextStyle spoqaHanSansStyle = const TextStyle(
    fontFamily: 'SpoqaHanSans',
    color: CdsColors.grey850,
    package: packageName,
  );

  static const TextStyle headline1 = const TextStyle(
    fontFamily: 'SpoqaHanSans',
    fontSize: 32,
    color: CdsColors.grey850,
    fontWeight: FontWeight.w700,
    height: 1.25,
    package: packageName,
  );
  static const TextStyle headline2 = const TextStyle(
    fontFamily: 'SpoqaHanSans',
    fontSize: 28,
    color: CdsColors.grey850,
    fontWeight: FontWeight.w700,
    height: 1.38,
    package: packageName,
  );
  static const TextStyle headline3 = const TextStyle(
    fontFamily: 'SpoqaHanSans',
    fontSize: 26,
    color: CdsColors.grey850,
    fontWeight: FontWeight.w700,
    height: 1.3,
    package: packageName,
  );
  static const TextStyle headline4 = const TextStyle(
    fontFamily: 'SpoqaHanSans',
    fontSize: 24,
    color: CdsColors.grey850,
    fontWeight: FontWeight.w700,
    height: 1.25,
    package: packageName,
  );
  static const TextStyle headline5 = const TextStyle(
    fontFamily: 'SpoqaHanSans',
    fontSize: 22,
    color: CdsColors.grey850,
    fontWeight: FontWeight.w400,
    height: 1.3,
    package: packageName,
  );
  static const TextStyle headline6 = const TextStyle(
    fontFamily: 'SpoqaHanSans',
    fontSize: 18,
    color: CdsColors.grey850,
    fontWeight: FontWeight.w700,
    height: 1.35,
    package: packageName,
  );
  static const TextStyle bodyText1 = const TextStyle(
    fontFamily: 'SpoqaHanSans',
    fontSize: 16,
    color: CdsColors.grey850,
    fontWeight: FontWeight.w400,
    height: 1.5,
    package: packageName,
  );
  static const TextStyle bodyText2 = const TextStyle(
    fontFamily: 'SpoqaHanSans',
    fontSize: 14,
    color: CdsColors.grey850,
    fontWeight: FontWeight.w400,
    height: 1.45,
    package: packageName,
  );
  static const TextStyle caption = const TextStyle(
    fontFamily: 'SpoqaHanSans',
    fontSize: 12,
    color: CdsColors.grey850,
    fontWeight: FontWeight.w300,
    height: 1.15,
    package: packageName,
  );
  /// caption2
  static const TextStyle overline = const TextStyle(
    fontFamily: 'SpoqaHanSans',
    fontSize: 10,
    color: CdsColors.grey850,
    fontWeight: FontWeight.w300,
    height: 1.15,
    package: packageName,
  );
  static const TextStyle button = const TextStyle(
    fontFamily: 'SpoqaHanSans',
    fontSize: 14,
    fontWeight: FontWeight.w700,
    package: packageName,
  );

  static const TextTheme textTheme = TextTheme(
    headline1: CdsTextStyles.headline1,
    headline2: CdsTextStyles.headline2,
    headline3: CdsTextStyles.headline3,
    headline4: CdsTextStyles.headline4,
    headline5: CdsTextStyles.headline5,
    headline6: CdsTextStyles.headline6,
    bodyText1: CdsTextStyles.bodyText1,
    bodyText2: CdsTextStyles.bodyText2,
    overline: CdsTextStyles.overline,
    caption: CdsTextStyles.caption,
    button: CdsTextStyles.button,
  );
}
