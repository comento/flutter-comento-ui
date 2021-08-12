import 'package:comento_design_system/comento_design_system.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RatingButton extends StatelessWidget {
  final k;
  RatingButton(this.k);
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        CdsRatingButton(
          onPressed: () {},
          text: k.text(label: 'Text', initial: 'Button'),
          icon: Image.asset(
            'assets/images/icons/add.png',
            color: CdsColors.green600,
          ),
          rate: 0,
        ),
        CdsRatingButton(
          color: CdsComponentColor.grey,
          onPressed: () {},
          text: k.text(label: 'Text', initial: 'Button'),
          icon: Image.asset(
            'assets/images/icons/add.png',
            color: CdsColors.grey400,
          ),
          rate: 1,
        ),
        CdsRatingButton(
          color: CdsComponentColor.red,
          onPressed: () {},
          text: k.text(label: 'Text', initial: 'Button'),
          icon: Image.asset(
            'assets/images/icons/add.png',
            color: CdsColors.red600,
          ),
          rate: 3,
        ),
      ],
    );
  }
}
