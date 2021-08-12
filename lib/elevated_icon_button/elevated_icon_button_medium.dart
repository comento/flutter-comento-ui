import 'package:comento_design_system/comento_design_system.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ElevatedIconButtonMedium extends StatelessWidget {
  final k;
  ElevatedIconButtonMedium(this.k);
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        CdsElevatedIconButton.medium(
          color: CdsComponentColor.green,
          isEnabled: k.boolean(label: 'Enabled', initial: true),
          isLoading: k.boolean(label: 'Loading', initial: false),
          onPressed: () {},
          text: k.text(label: 'Text', initial: 'Button'),
          icon: Image.asset('assets/images/icons/add.png'),
        ),
        CdsElevatedIconButton.medium(
          color: CdsComponentColor.blue,
          isEnabled: k.boolean(label: 'Enabled', initial: true),
          isLoading: k.boolean(label: 'Loading', initial: false),
          onPressed: () {},
          text: k.text(label: 'Text', initial: 'Button'),
          icon: Image.asset('assets/images/icons/add.png'),
        ),
        CdsElevatedIconButton.medium(
          color: CdsComponentColor.grey,
          isEnabled: k.boolean(label: 'Enabled', initial: true),
          isLoading: k.boolean(label: 'Loading', initial: false),
          onPressed: () {},
          text: k.text(label: 'Text', initial: 'Button'),
          icon: Image.asset(
            'assets/images/icons/add.png',
            color: CdsColors.grey700,
          ),
        ),
        CdsElevatedIconButton.medium(
          color: CdsComponentColor.kakao,
          isEnabled: k.boolean(label: 'Enabled', initial: true),
          isLoading: k.boolean(label: 'Loading', initial: false),
          onPressed: () {},
          text: k.text(label: 'Text', initial: 'Button'),
          icon: Image.asset(
            'assets/images/icons/add.png',
            color: CdsColors.black,
          ),
        ),
      ],
    );
  }
}
