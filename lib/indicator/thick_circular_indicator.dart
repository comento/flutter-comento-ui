import 'package:comento_design_system/comento_design_system.dart';
import 'package:flutter/cupertino.dart';

class ThickCircularIndicator extends StatelessWidget {
  final k;
  ThickCircularIndicator(this.k);
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        CdsThickCircularProgressIndicator.small(
          color: ComponentColor.green,
        ),
        CdsThickCircularProgressIndicator.small(
          color: ComponentColor.red,
        ),
        CdsThickCircularProgressIndicator.small(
          color: ComponentColor.grey,
        ),
        CdsThickCircularProgressIndicator.small(
          color: ComponentColor.blue,
        ),
        CdsThickCircularProgressIndicator.medium(
          color: ComponentColor.green,
        ),
        CdsThickCircularProgressIndicator.medium(
          color: ComponentColor.red,
        ),
        CdsThickCircularProgressIndicator.medium(
          color: ComponentColor.grey,
        ),
        CdsThickCircularProgressIndicator.medium(
          color: ComponentColor.blue,
        ),
        CdsThickCircularProgressIndicator.large(
          color: ComponentColor.green,
        ),
        CdsThickCircularProgressIndicator.large(
          color: ComponentColor.red,
        ),
        CdsThickCircularProgressIndicator.large(
          color: ComponentColor.grey,
        ),
        CdsThickCircularProgressIndicator.large(
          color: ComponentColor.blue,
        ),
      ],
    );
  }
}
