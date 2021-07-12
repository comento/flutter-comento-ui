import 'package:comento_design_system/comento_design_system.dart';
import 'package:flutter/cupertino.dart';

class TextButtonSmall extends StatelessWidget {
  final k;
  TextButtonSmall(this.k);
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        CdsTextButton.small(
          color: ComponentColor.green,
          isEnabled: k.boolean(label: 'Enabled', initial: true),
          onPressed: () {},
          text: k.text(label: 'Text', initial: 'Button'),
        ),
        CdsTextButton.small(
          color: ComponentColor.blue,
          isEnabled: k.boolean(label: 'Enabled', initial: true),
          onPressed: () {},
          text: k.text(label: 'Text', initial: 'Button'),
        ),
        CdsTextButton.small(
          color: ComponentColor.grey,
          isEnabled: k.boolean(label: 'Enabled', initial: true),
          onPressed: () {},
          text: k.text(label: 'Text', initial: 'Button'),
        ),
        CdsTextButton.small(
          color: ComponentColor.red,
          isEnabled: k.boolean(label: 'Enabled', initial: true),
          onPressed: () {},
          text: k.text(label: 'Text', initial: 'Button'),
        ),
      ],
    );
  }
}
