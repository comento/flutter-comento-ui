import 'package:comento_design_system/comento_design_system.dart';
import 'package:flutter/cupertino.dart';

class TextButtonMedium extends StatelessWidget {
  final k;
  TextButtonMedium(this.k);
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        CdsTextButton.medium(
          isEnabled: k.boolean(label: 'Enabled', initial: true),
          onPressed: () {},
          text: k.text(label: 'Text', initial: 'Button'),
        ),
        CdsTextButton.medium(
          color: CdsTextButtonColor.blue,
          isEnabled: k.boolean(label: 'Enabled', initial: true),
          onPressed: () {},
          text: k.text(label: 'Text', initial: 'Button'),
        ),
        CdsTextButton.medium(
          color: CdsTextButtonColor.grey,
          isEnabled: k.boolean(label: 'Enabled', initial: true),
          onPressed: () {},
          text: k.text(label: 'Text', initial: 'Button'),
        ),
        CdsTextButton.medium(
          color: CdsTextButtonColor.red,
          isEnabled: k.boolean(label: 'Enabled', initial: true),
          onPressed: () {},
          text: k.text(label: 'Text', initial: 'Button'),
        ),
      ],
    );
  }
}
