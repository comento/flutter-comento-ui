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
          color: CdsComponentColor.green,
        ),
        CdsThickCircularProgressIndicator.small(
          color: CdsComponentColor.red,
        ),
        CdsThickCircularProgressIndicator.small(
          color: CdsComponentColor.grey,
        ),
        CdsThickCircularProgressIndicator.small(
          color: CdsComponentColor.blue,
        ),
        CdsThickCircularProgressIndicator.medium(
          color: CdsComponentColor.green,
        ),
        CdsThickCircularProgressIndicator.medium(
          color: CdsComponentColor.red,
        ),
        CdsThickCircularProgressIndicator.medium(
          color: CdsComponentColor.grey,
        ),
        CdsThickCircularProgressIndicator.medium(
          color: CdsComponentColor.blue,
        ),
        CdsThickCircularProgressIndicator.large(
          color: CdsComponentColor.green,
        ),
        CdsThickCircularProgressIndicator.large(
          color: CdsComponentColor.red,
        ),
        CdsThickCircularProgressIndicator.large(
          color: CdsComponentColor.grey,
        ),
        CdsThickCircularProgressIndicator.large(
          color: CdsComponentColor.blue,
        ),
      ],
    );
  }
}
