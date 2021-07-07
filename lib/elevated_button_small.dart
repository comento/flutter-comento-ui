import 'package:comento_design_system/comento_design_system.dart';
import 'package:flutter/cupertino.dart';

class ElevatedButtonSmall extends StatelessWidget {
  final k;
  ElevatedButtonSmall(this.k);
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        CdsElevatedButton.small(
          onPressed: k.boolean(label: 'Enabled', initial: true) ? () {} : null,
          text: k.text(label: 'Text', initial: 'Button'),
        ),
        CdsElevatedButton.small(
          color: CdsElevatedButtonColor.blue,
          onPressed: k.boolean(label: 'Enabled', initial: true) ? () {} : null,
          text: k.text(label: 'Text', initial: 'Button'),
        ),
        CdsElevatedButton.small(
          color: CdsElevatedButtonColor.grey,
          onPressed: k.boolean(label: 'Enabled', initial: true) ? () {} : null,
          text: k.text(label: 'Text', initial: 'Button'),
        ),
      ],
    );
  }
}
