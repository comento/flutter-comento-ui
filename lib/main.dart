import 'package:comento_design_system/comento_design_system.dart';
import 'package:flutter/material.dart';
import 'package:storybook_flutter/storybook_flutter.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Storybook(
      children: [
        Story(
          name: 'Flat button',
          padding: EdgeInsets.all(5), // optional padding customization
          background: Colors.red, // optional background color customization
          builder: (_, k) => MaterialButton(
            onPressed:
                k.boolean(label: 'Enabled', initial: true) ? () {} : null,
            child: Text(k.text(label: 'Text', initial: 'Flat button')),
          ),
        ),
        Story(
          name: 'Elevated button',
          builder: (_, k) => CdsElevatedButton(
            onPressed:
                k.boolean(label: 'Enabled', initial: true) ? () {} : null,
            child: Text(k.text(label: 'Text', initial: 'Elevated button')),
          ),
        ),
        Story.simple(
          name: 'Input field',
          child: const TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Input field',
            ),
          ),
        ),
      ],
    );
  }
}
