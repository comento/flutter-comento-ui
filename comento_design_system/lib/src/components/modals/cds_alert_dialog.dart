import 'package:comento_design_system/comento_design_system.dart';
import 'package:flutter/material.dart';

class CdsAlertDialog extends StatelessWidget {
  final String text;

  CdsAlertDialog({required this.text});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(4.0)),
      ),
      elevation: 0,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(height: 25),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 32.0),
            child: Text(
              text,
              style: CdsTextStyles.bodyText2.merge(
                TextStyle(color: CdsColors.grey800),
              ),
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(height: 25),
          Container(
            color: CdsColors.grey200,
            height: 1,
            width: double.infinity,
          ),
          SizedBox(
            height: 48,
            child: CdsTextButton.large(
              text: '확인',
              color: CdsComponentColor.grey,
              onPressed: () => Navigator.of(context).pop(),
            ),
          ),
        ],
      ),
    );
  }
}
