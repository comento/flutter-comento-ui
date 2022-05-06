import 'package:comento_design_system/comento_design_system.dart';
import 'package:flutter/material.dart';

class Icons extends StatelessWidget {
  final k;
  Icons(this.k);
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        IconButton(
          icon: Icon(CustomIcons.edu_large_line),
          onPressed: () => null,
        ),
      ],
    );
  }
}
