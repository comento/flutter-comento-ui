import 'package:comento_design_system/comento_design_system.dart';
import 'package:flutter/cupertino.dart';

class ElevatedButtonMedium extends StatelessWidget {
  final k;
  ElevatedButtonMedium(this.k);
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        CdsElevatedButton.medium(
          isEnabled: k.boolean(label: 'Enabled', initial: true),
          onPressed: () {},
          text: k.text(label: 'Text', initial: 'Button'),
        ),
        CdsElevatedButton.medium(
          color: CdsElevatedButtonColor.blue,
          isEnabled: k.boolean(label: 'Enabled', initial: true),
          onPressed: () {},
          text: k.text(label: 'Text', initial: 'Button'),
        ),
        CdsElevatedButton.medium(
          color: CdsElevatedButtonColor.grey,
          isEnabled: k.boolean(label: 'Enabled', initial: true),
          onPressed: () {},
          text: k.text(label: 'Text', initial: 'Button'),
        ),
      ],
    );
  }
}
