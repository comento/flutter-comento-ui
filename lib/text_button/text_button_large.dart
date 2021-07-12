import 'package:comento_design_system/comento_design_system.dart';
import 'package:flutter/cupertino.dart';

class TextButtonLarge extends StatelessWidget {
  final k;
  TextButtonLarge(this.k);
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        CdsTextButton.large(
          color: ComponentColor.green,
          isEnabled: k.boolean(label: 'Enabled', initial: true),
          onPressed: () {},
          text: k.text(label: 'Text', initial: 'Button'),
        ),
        CdsTextButton.large(
          color: ComponentColor.blue,
          isEnabled: k.boolean(label: 'Enabled', initial: true),
          onPressed: () {},
          text: k.text(label: 'Text', initial: 'Button'),
        ),
        CdsTextButton.large(
          color: ComponentColor.grey,
          isEnabled: k.boolean(label: 'Enabled', initial: true),
          onPressed: () {},
          text: k.text(label: 'Text', initial: 'Button'),
        ),
        CdsTextButton.large(
          color: ComponentColor.red,
          isEnabled: k.boolean(label: 'Enabled', initial: true),
          onPressed: () {},
          text: k.text(label: 'Text', initial: 'Button'),
        ),
      ],
    );
  }
}
