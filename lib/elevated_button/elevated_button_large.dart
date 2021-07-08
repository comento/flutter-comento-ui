import 'package:comento_design_system/comento_design_system.dart';
import 'package:flutter/cupertino.dart';

class ElevatedButtonLarge extends StatelessWidget {
  final k;
  ElevatedButtonLarge(this.k);
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        CdsElevatedButton.large(
          isEnabled: k.boolean(label: 'Enabled', initial: true),
          onPressed: () {},
          text: k.text(label: 'Text', initial: 'Button'),
        ),
        CdsElevatedButton.large(
          color: CdsElevatedButtonColor.blue,
          isEnabled: k.boolean(label: 'Enabled', initial: true),
          onPressed: () {},
          text: k.text(label: 'Text', initial: 'Button'),
        ),
        CdsElevatedButton.large(
          color: CdsElevatedButtonColor.grey,
          isEnabled: k.boolean(label: 'Enabled', initial: true),
          onPressed: () {},
          text: k.text(label: 'Text', initial: 'Button'),
        ),
      ],
    );
  }
}
