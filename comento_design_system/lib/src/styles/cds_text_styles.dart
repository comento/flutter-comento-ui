import 'package:flutter/material.dart';

import '../strings.dart';
import 'cds_colors.dart';

class CdsTextStyles {
  CdsTextStyles._();

  static const String fontFamily = 'Pretendard';

  static const FontWeight light = FontWeight.w300;
  static const FontWeight regular = FontWeight.w400;
  static const FontWeight medium = FontWeight.w500;
  static const FontWeight semiBold = FontWeight.w600;

  static const TextStyle pretendardStyle = const TextStyle(
    fontFamily: fontFamily,
    color: CdsColors.black,
    package: packageName,
  );

  static const TextStyle headline1 = const TextStyle(
    fontFamily: fontFamily,
    fontSize: 32,
    color: CdsColors.black,
    fontWeight: semiBold,
    height: 1.26,
    package: packageName,
  );
  static const TextStyle headline2 = const TextStyle(
    fontFamily: fontFamily,
    fontSize: 28,
    color: CdsColors.black,
    fontWeight: semiBold,
    height: 1.28,
    package: packageName,
  );
  static const TextStyle headline3 = const TextStyle(
    fontFamily: fontFamily,
    fontSize: 26,
    color: CdsColors.black,
    fontWeight: semiBold,
    height: 1.28,
    package: packageName,
  );
  static const TextStyle headline4 = const TextStyle(
    fontFamily: fontFamily,
    fontSize: 24,
    color: CdsColors.black,
    fontWeight: semiBold,
    height: 1.28,
    package: packageName,
  );
  static const TextStyle headline5 = const TextStyle(
    fontFamily: fontFamily,
    fontSize: 22,
    color: CdsColors.black,
    fontWeight: semiBold,
    height: 1.26,
    package: packageName,
  );
  static const TextStyle headline6 = const TextStyle(
    fontFamily: fontFamily,
    fontSize: 18,
    color: CdsColors.black,
    fontWeight: regular,
    height: 1.38,
    package: packageName,
  );
  static const TextStyle bodyText1 = const TextStyle(
    fontFamily: fontFamily,
    fontSize: 16,
    color: CdsColors.black,
    fontWeight: regular,
    height: 1.54,
    package: packageName,
  );
  static const TextStyle bodyText2 = const TextStyle(
    fontFamily: fontFamily,
    fontSize: 14,
    color: CdsColors.black,
    fontWeight: regular,
    height: 1.4,
    package: packageName,
  );
  static const TextStyle caption = const TextStyle(
    fontFamily: fontFamily,
    fontSize: 12,
    color: CdsColors.black,
    fontWeight: regular,
    height: 1.22,
    package: packageName,
  );

  /// caption2
  static const TextStyle overline = const TextStyle(
    fontFamily: fontFamily,
    fontSize: 10,
    color: CdsColors.black,
    fontWeight: regular,
    height: 1.26,
    package: packageName,
  );

  static const TextStyle button = const TextStyle(
    fontFamily: fontFamily,
    fontSize: 14,
    fontWeight: semiBold,
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
