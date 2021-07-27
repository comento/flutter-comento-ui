import 'package:comento_design_system/comento_design_system.dart';
import 'package:flutter/cupertino.dart';
import 'package:storybook_flutter/storybook_flutter.dart';

class TextArea extends StatefulWidget {
  final KnobsBuilder k;
  TextArea(this.k);

  @override
  _TextAreaState createState() => _TextAreaState();
}

class _TextAreaState extends State<TextArea> {
  final textController = TextEditingController();
  final labelController = TextEditingController();
  final underlinedController = TextEditingController();
  String value = '';

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      behavior: HitTestBehavior.translucent,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          CdsTextArea(
            controller: textController,
            onChanged: (value) {
              setState(() {
                this.value = value;
              });
            },
            autocorrect: false,
            hintText:
                widget.k.text(label: 'hintText', initial: 'placeholder'),
          ),
          Text(value),
        ],
      ),
    );
  }
}
