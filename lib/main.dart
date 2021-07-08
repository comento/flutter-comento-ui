import 'package:flutter/material.dart';
import 'package:flutter_comento_ui/elevated_button/elevated_button_large.dart';
import 'package:flutter_comento_ui/elevated_button/elevated_button_large_full.dart';
import 'package:flutter_comento_ui/elevated_button/elevated_button_medium.dart';
import 'package:flutter_comento_ui/elevated_button/elevated_button_small.dart';
import 'package:flutter_comento_ui/elevated_icon_button/elevated_icon_button_large_full.dart';
import 'package:flutter_comento_ui/elevated_icon_button/elevated_icon_button_medium.dart';
import 'package:flutter_comento_ui/elevated_icon_button/elevated_icon_button_small.dart';
import 'package:storybook_flutter/storybook_flutter.dart';

import 'elevated_icon_button/elevated_icon_button_large.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Storybook(
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
      ],
    );
  }
}
