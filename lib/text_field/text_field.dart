import 'package:comento_design_system/comento_design_system.dart';
import 'package:flutter/cupertino.dart';
import 'package:storybook_flutter/storybook_flutter.dart';

class TextField extends StatefulWidget {
  final KnobsBuilder k;
  TextField(this.k);

  @override
  _TextFieldState createState() => _TextFieldState();
}

class _TextFieldState extends State<TextField> {
  final textController = TextEditingController();
  final labelController = TextEditingController();
  final underlinedController = TextEditingController();
  String value = '';

  @override
  Widget build(BuildContext context) {
    final isValid = widget.k.boolean(label: 'isValid', initial: true);
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      behavior: HitTestBehavior.translucent,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          CdsOutlinedTextField(
            controller: textController,
            autovalidateMode: AutovalidateMode.onUserInteraction,
            onChanged: (value) {
              setState(() {
                this.value = value;
              });
            },
            validator: (value) => isValid ? null : "Is not valid!",
            autocorrect: false,
            hintText:
                widget.k.text(label: 'hintText', initial: 'test@test.com'),
            obscureText: widget.k.boolean(label: 'obscure'),
          ),
          CdsOutlinedLabelTextField(
            controller: labelController,
            autovalidateMode: AutovalidateMode.onUserInteraction,
            onChanged: (value) {
              setState(() {
                this.value = value;
              });
            },
            validator: (value) => isValid ? null : "Is not valid!",
            autocorrect: false,
            labelText: widget.k.text(label: 'labelText', initial: 'email'),
            hintText:
                widget.k.text(label: 'hintText', initial: 'test@test.com'),
            obscureText: widget.k.boolean(label: 'obscure'),
          ),
          CdsUnderlinedTextField(
            controller: underlinedController,
            autovalidateMode: AutovalidateMode.onUserInteraction,
            onChanged: (value) {
              setState(() {
                this.value = value;
              });
            },
            validator: (value) => isValid ? null : "Is not valid!",
            autocorrect: false,
            hintText:
                widget.k.text(label: 'hintText', initial: 'test@test.com'),
            obscureText: widget.k.boolean(label: 'obscure'),
          ),
          Text(value),
        ],
      ),
    );
  }
}
