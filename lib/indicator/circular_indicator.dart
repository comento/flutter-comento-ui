import 'package:comento_design_system/comento_design_system.dart';
import 'package:flutter/cupertino.dart';

class CircularIndicator extends StatelessWidget {
  final k;
  CircularIndicator(this.k);
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        CdsCircularProgressIndicator.small(
          color: ComponentColor.green,
        ),
        CdsCircularProgressIndicator.small(
          color: ComponentColor.red,
        ),
        CdsCircularProgressIndicator.small(
          color: ComponentColor.grey,
        ),
        CdsCircularProgressIndicator.small(
          color: ComponentColor.blue,
        ),
        CdsCircularProgressIndicator.medium(
          color: ComponentColor.green,
        ),
        CdsCircularProgressIndicator.medium(
          color: ComponentColor.red,
        ),
        CdsCircularProgressIndicator.medium(
          color: ComponentColor.grey,
        ),
        CdsCircularProgressIndicator.medium(
          color: ComponentColor.blue,
        ),
        CdsCircularProgressIndicator.large(
          color: ComponentColor.green,
        ),
        CdsCircularProgressIndicator.large(
          color: ComponentColor.red,
        ),
        CdsCircularProgressIndicator.large(
          color: ComponentColor.grey,
        ),
        CdsCircularProgressIndicator.large(
          color: ComponentColor.blue,
        ),
      ],
    );
  }
}
