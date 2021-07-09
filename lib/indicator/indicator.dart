import 'package:comento_design_system/comento_design_system.dart';
import 'package:flutter/cupertino.dart';

class Indicator extends StatelessWidget {
  final k;
  Indicator(this.k);
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        CdsCircularProgressIndicator.small(
          color: CdsCircularProgressIndicatorColor.green,
        ),
        CdsCircularProgressIndicator.small(
          color: CdsCircularProgressIndicatorColor.red,
        ),
        CdsCircularProgressIndicator.small(
          color: CdsCircularProgressIndicatorColor.grey,
        ),
        CdsCircularProgressIndicator.small(
          color: CdsCircularProgressIndicatorColor.blue,
        ),
        CdsCircularProgressIndicator.medium(
          color: CdsCircularProgressIndicatorColor.green,
        ),
        CdsCircularProgressIndicator.medium(
          color: CdsCircularProgressIndicatorColor.red,
        ),
        CdsCircularProgressIndicator.medium(
          color: CdsCircularProgressIndicatorColor.grey,
        ),
        CdsCircularProgressIndicator.medium(
          color: CdsCircularProgressIndicatorColor.blue,
        ),
        CdsCircularProgressIndicator.large(
          color: CdsCircularProgressIndicatorColor.green,
        ),
        CdsCircularProgressIndicator.large(
          color: CdsCircularProgressIndicatorColor.red,
        ),
        CdsCircularProgressIndicator.large(
          color: CdsCircularProgressIndicatorColor.grey,
        ),
        CdsCircularProgressIndicator.large(
          color: CdsCircularProgressIndicatorColor.blue,
        ),
      ],
    );
  }
}
