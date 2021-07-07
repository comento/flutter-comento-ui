import 'package:comento_design_system/comento_design_system.dart';
import 'package:flutter/cupertino.dart';

class ElevatedButtonLargeFull extends StatelessWidget {
  final k;
  ElevatedButtonLargeFull(this.k);
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        CdsElevatedButton.largeFull(
          onPressed: k.boolean(label: 'Enabled', initial: true) ? () {} : null,
          child:
              Text(k.text(label: 'Text', initial: 'Button')),
        ),
        CdsElevatedButton.largeFull(
          color: CdsElevatedButtonColor.blue,
          onPressed: k.boolean(label: 'Enabled', initial: true) ? () {} : null,
          child:
              Text(k.text(label: 'Text', initial: 'Button')),
        ),
        CdsElevatedButton.largeFull(
          color: CdsElevatedButtonColor.grey,
          onPressed: k.boolean(label: 'Enabled', initial: true) ? () {} : null,
          child:
              Text(k.text(label: 'Text', initial: 'Button')),
        ),
      ],
    );
  }
}
