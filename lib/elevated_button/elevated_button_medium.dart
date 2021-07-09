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
          color: ComponentColor.green,
          isEnabled: k.boolean(label: 'Enabled', initial: true),
          isLoading: k.boolean(label: 'Loading', initial: false),
          onPressed: () {},
          child: Text(k.text(label: 'Text', initial: 'Button')),
        ),
        CdsElevatedButton.medium(
          color: ComponentColor.blue,
          isEnabled: k.boolean(label: 'Enabled', initial: true),
          isLoading: k.boolean(label: 'Loading', initial: false),
          onPressed: () {},
          child: Text(k.text(label: 'Text', initial: 'Button')),
        ),
        CdsElevatedButton.medium(
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
