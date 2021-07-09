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
          color: ComponentColor.green,
          isEnabled: k.boolean(label: 'Enabled', initial: true),
          isLoading: k.boolean(label: 'Loading', initial: false),
          onPressed: () {},
          child: Text(k.text(label: 'Text', initial: 'Button')),
        ),
        CdsElevatedButton.largeFull(
          color: ComponentColor.blue,
          isEnabled: k.boolean(label: 'Enabled', initial: true),
          isLoading: k.boolean(label: 'Loading', initial: false),
          onPressed: () {},
          child: Text(k.text(label: 'Text', initial: 'Button')),
        ),
        CdsElevatedButton.largeFull(
          color: ComponentColor.grey,
          isEnabled: k.boolean(label: 'Enabled', initial: true),
          isLoading: k.boolean(label: 'Loading', initial: false),
          onPressed: () {},
          child: Text(k.text(label: 'Text', initial: 'Button')),
        ),
      ],
    );
  }
}
