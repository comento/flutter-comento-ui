import 'package:comento_design_system/comento_design_system.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ElevatedIconButtonSmall extends StatelessWidget {
  final k;
  ElevatedIconButtonSmall(this.k);
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        CdsElevatedIconButton.small(
          color: ComponentColor.green,
          isEnabled: k.boolean(label: 'Enabled', initial: true),
          isLoading: k.boolean(label: 'Loading', initial: false),
          onPressed: () {},
          child: Text(k.text(label: 'Text', initial: 'Button')),
          icon: Image.asset('assets/images/icons/add.png'),
        ),
        CdsElevatedIconButton.small(
          color: ComponentColor.blue,
          isEnabled: k.boolean(label: 'Enabled', initial: true),
          isLoading: k.boolean(label: 'Loading', initial: false),
          onPressed: () {},
          child: Text(k.text(label: 'Text', initial: 'Button')),
          icon: Image.asset('assets/images/icons/add.png'),
        ),
        CdsElevatedIconButton.small(
          color: ComponentColor.grey,
          isEnabled: k.boolean(label: 'Enabled', initial: true),
          isLoading: k.boolean(label: 'Loading', initial: false),
          onPressed: () {},
          child: Text(k.text(label: 'Text', initial: 'Button')),
          icon: Image.asset(
            'assets/images/icons/add.png',
            color: CdsColors.grey700,
          ),
        ),
        CdsElevatedIconButton.small(
          color: ComponentColor.kakao,
          isEnabled: k.boolean(label: 'Enabled', initial: true),
          isLoading: k.boolean(label: 'Loading', initial: false),
          onPressed: () {},
          child: Text(k.text(label: 'Text', initial: 'Button')),
          icon: Image.asset(
            'assets/images/icons/add.png',
            color: CdsColors.black,
          ),
        ),
      ],
    );
  }
}
