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
          color: CdsComponentColor.green,
        ),
        CdsCircularProgressIndicator.small(
          color: CdsComponentColor.red,
        ),
        CdsCircularProgressIndicator.small(
          color: CdsComponentColor.grey,
        ),
        CdsCircularProgressIndicator.small(
          color: CdsComponentColor.blue,
        ),
        CdsCircularProgressIndicator.medium(
          color: CdsComponentColor.green,
        ),
        CdsCircularProgressIndicator.medium(
          color: CdsComponentColor.red,
        ),
        CdsCircularProgressIndicator.medium(
          color: CdsComponentColor.grey,
        ),
        CdsCircularProgressIndicator.medium(
          color: CdsComponentColor.blue,
        ),
        CdsCircularProgressIndicator.large(
          color: CdsComponentColor.green,
        ),
        CdsCircularProgressIndicator.large(
          color: CdsComponentColor.red,
        ),
        CdsCircularProgressIndicator.large(
          color: CdsComponentColor.grey,
        ),
        CdsCircularProgressIndicator.large(
          color: CdsComponentColor.blue,
        ),
      ],
    );
  }
}
