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
          onPressed: k.boolean(label: 'Enabled', initial: true) ? () {} : null,
          child:
              Text(k.text(label: 'Text', initial: 'Button')),
        ),
        CdsElevatedButton.large(
          color: CdsElevatedButtonColor.blue,
          onPressed: k.boolean(label: 'Enabled', initial: true) ? () {} : null,
          child:
              Text(k.text(label: 'Text', initial: 'Button')),
        ),
        CdsElevatedButton.large(
          color: CdsElevatedButtonColor.grey,
          onPressed: k.boolean(label: 'Enabled', initial: true) ? () {} : null,
          child:
              Text(k.text(label: 'Text', initial: 'Button')),
        ),
      ],
    );
  }
}
