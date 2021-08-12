import 'package:comento_design_system/comento_design_system.dart';
import 'package:flutter/cupertino.dart';

class OutlinedButtonLarge extends StatelessWidget {
  final k;
  OutlinedButtonLarge(this.k);
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        CdsOutlinedButton.large(
          color: CdsComponentColor.green,
          isEnabled: k.boolean(label: 'Enabled', initial: true),
          isLoading: k.boolean(label: 'Loading', initial: false),
          onPressed: () {},
          text: k.text(label: 'Text', initial: 'Button'),
        ),
        CdsOutlinedButton.large(
          color: CdsComponentColor.blue,
          isEnabled: k.boolean(label: 'Enabled', initial: true),
          isLoading: k.boolean(label: 'Loading', initial: false),
          onPressed: () {},
          text: k.text(label: 'Text', initial: 'Button'),
        ),
        CdsOutlinedButton.large(
          color: CdsComponentColor.grey,
          isEnabled: k.boolean(label: 'Enabled', initial: true),
          isLoading: k.boolean(label: 'Loading', initial: false),
          onPressed: () {},
          text: k.text(label: 'Text', initial: 'Button'),
        ),
        CdsOutlinedButton.large(
          color: CdsComponentColor.red,
          isEnabled: k.boolean(label: 'Enabled', initial: true),
          isLoading: k.boolean(label: 'Loading', initial: false),
          onPressed: () {},
          text: k.text(label: 'Text', initial: 'Button'),
        ),
      ],
    );
  }
}
