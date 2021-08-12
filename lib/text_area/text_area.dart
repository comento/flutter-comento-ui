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
  final underlinedController = TextEditingController();
  final replyController = TextEditingController();
  String value = '';

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      behavior: HitTestBehavior.translucent,
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 500,
              child: CdsTextArea(
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
            ),
            SizedBox(height: 20),
            SizedBox(
              height: 500,
              child: CdsOutlinedTextArea(
                controller: underlinedController,
                onChanged: (value) {
                  setState(() {
                    this.value = value;
                  });
                },
                autocorrect: false,
                hintText:
                    widget.k.text(label: 'hintText', initial: 'placeholder'),
              ),
            ),
            SizedBox(height: 20),
            CdsReplyArea(
              controller: replyController,
              onChanged: (value) {
                setState(() {
                  this.value = value;
                });
              },
              autocorrect: false,
              hintText:
                  widget.k.text(label: 'hintText', initial: 'placeholder'),
            ),
            SizedBox(height: 20),
            Text(value),
          ],
        ),
      ),
    );
  }
}
