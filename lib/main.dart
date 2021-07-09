import 'package:comento_design_system/comento_design_system.dart';
import 'package:flutter/material.dart';
import 'package:flutter_comento_ui/elevated_button/elevated_button_large.dart';
import 'package:flutter_comento_ui/elevated_button/elevated_button_large_full.dart';
import 'package:flutter_comento_ui/elevated_button/elevated_button_medium.dart';
import 'package:flutter_comento_ui/elevated_button/elevated_button_small.dart';
import 'package:flutter_comento_ui/elevated_icon_button/elevated_icon_button_large_full.dart';
import 'package:flutter_comento_ui/elevated_icon_button/elevated_icon_button_medium.dart';
import 'package:flutter_comento_ui/elevated_icon_button/elevated_icon_button_small.dart';
import 'package:flutter_comento_ui/indicator/circular_indicator.dart';
import 'package:flutter_comento_ui/indicator/thick_circular_indicator.dart';
import 'package:flutter_comento_ui/outlined_button/outlined_button_large.dart';
import 'package:flutter_comento_ui/outlined_button/outlined_button_large_full.dart';
import 'package:flutter_comento_ui/outlined_button/outlined_button_medium.dart';
import 'package:flutter_comento_ui/outlined_button/outlined_button_small.dart';
import 'package:flutter_comento_ui/text_button/text_button_large.dart';
import 'package:flutter_comento_ui/text_button/text_button_medium.dart';
import 'package:flutter_comento_ui/text_button/text_button_small.dart';
import 'package:storybook_flutter/storybook_flutter.dart';

import 'elevated_icon_button/elevated_icon_button_large.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Storybook(
      theme: ThemeData(canvasColor: CdsColors.white),
      children: [
        Story(
          name: 'Elevated button - small',
          builder: (_, k) => ElevatedButtonSmall(k),
        ),
        Story(
          name: 'Elevated button - medium',
          builder: (_, k) => ElevatedButtonMedium(k),
        ),
        Story(
          name: 'Elevated button - large',
          builder: (_, k) => ElevatedButtonLarge(k),
        ),
        Story(
          name: 'Elevated button - large full',
          builder: (_, k) => ElevatedButtonLargeFull(k),
        ),
        Story(
          name: 'Elevated icon button - small',
          builder: (_, k) => ElevatedIconButtonSmall(k),
        ),
        Story(
          name: 'Elevated icon button - medium',
          builder: (_, k) => ElevatedIconButtonMedium(k),
        ),
        Story(
          name: 'Elevated icon button - large',
          builder: (_, k) => ElevatedIconButtonLarge(k),
        ),
        Story(
          name: 'Elevated icon button - large full',
          builder: (_, k) => ElevatedIconButtonLargeFull(k),
        ),
        Story(
          name: 'Outlined button - small',
          builder: (_, k) => OutlinedButtonSmall(k),
        ),
        Story(
          name: 'Outlined button - medium',
          builder: (_, k) => OutlinedButtonMedium(k),
        ),
        Story(
          name: 'Outlined button - large',
          builder: (_, k) => OutlinedButtonLarge(k),
        ),
        Story(
          name: 'Outlined button - large full',
          builder: (_, k) => OutlinedButtonLargeFull(k),
        ),
        Story(
          name: 'Text button - small',
          builder: (_, k) => TextButtonSmall(k),
        ),
        Story(
          name: 'Text button - medium',
          builder: (_, k) => TextButtonMedium(k),
        ),
        Story(
          name: 'Text button - large',
          builder: (_, k) => TextButtonLarge(k),
        ),
        Story(
          name: 'Circular Progress indicator',
          builder: (_, k) => CircularIndicator(k),
        ),
        Story(
          name: 'Thick Circular Progress indicator',
          builder: (_, k) => ThickCircularIndicator(k),
        ),
      ],
    );
  }
}
