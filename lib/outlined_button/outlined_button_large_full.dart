import 'package:comento_design_system/comento_design_system.dart';
import 'package:flutter/cupertino.dart';

class OutlinedButtonLargeFull extends StatelessWidget {
  final k;
  OutlinedButtonLargeFull(this.k);
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        CdsOutlinedButton.largeFull(
          isEnabled: k.boolean(label: 'Enabled', initial: true),
          onPressed: () {},
          text: k.text(label: 'Text', initial: 'Button'),
        ),
        CdsOutlinedButton.largeFull(
          color: CdsOutlinedButtonColor.blue,
          isEnabled: k.boolean(label: 'Enabled', initial: true),
          onPressed: () {},
          text: k.text(label: 'Text', initial: 'Button'),
        ),
        CdsOutlinedButton.largeFull(
          color: CdsOutlinedButtonColor.grey,
          isEnabled: k.boolean(label: 'Enabled', initial: true),
          onPressed: () {},
          text: k.text(label: 'Text', initial: 'Button'),
        ),
        CdsOutlinedButton.largeFull(
          color: CdsOutlinedButtonColor.red,
          isEnabled: k.boolean(label: 'Enabled', initial: true),
          onPressed: () {},
          text: k.text(label: 'Text', initial: 'Button'),
        ),
      ],
    );
  }
}
