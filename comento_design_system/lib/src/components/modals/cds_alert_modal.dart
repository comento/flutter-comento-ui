import 'package:comento_design_system/comento_design_system.dart';
import 'package:flutter/material.dart';

class CdsAlertModal extends StatelessWidget {
  final String description;
  final Function()? onConfirmed;
  CdsAlertModal({
    required this.description,
    required this.onConfirmed,
  });

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(10.0)),
      ),
      insetPadding: EdgeInsets.symmetric(horizontal: 24),
      elevation: 0,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(height: 25),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 32.0),
            child: _buildDescription(),
          ),
          SizedBox(height: 25),
          _buildDivider(),
          _buildAction(context),
        ],
      ),
    );
  }

  Widget _buildAction(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: CdsTextButton.large(
            text: '확인',
            color: CdsComponentColor.grey,
            onPressed: () {
              Navigator.of(context).pop();
              if (onConfirmed != null) onConfirmed!();
            },
          ),
        ),
      ],
    );
  }

  Text _buildDescription() {
    return Text(
      description,
      style: CdsTextStyles.bodyText2.merge(
        TextStyle(color: CdsColors.grey800),
      ),
      textAlign: TextAlign.center,
    );
  }

  Container _buildDivider({Axis axis = Axis.vertical}) {
    return Container(
      color: CdsColors.grey200,
      height: axis == Axis.vertical ? 1 : double.infinity,
      width: axis == Axis.horizontal ? 1 : double.infinity,
    );
  }
}
