import 'package:comento_design_system/comento_design_system.dart';
import 'package:flutter/material.dart';

class CdsPermissionModal extends StatelessWidget {
  final String title;
  final String description;
  final Function()? onConfirmed;
  final Function()? onCanceled;

  CdsPermissionModal({
    required this.title,
    required this.description,
    required this.onConfirmed,
    this.onCanceled,
  });

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(10.0)),
      ),
      elevation: 0,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(height: 25),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 32.0),
            child: _buildContents(),
          ),
          SizedBox(height: 25),
          _buildDivider(),
          SizedBox(
            height: 48,
            child: _buildActions(context),
          ),
        ],
      ),
    );
  }

  Widget _buildActions(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: CdsTextButton.large(
            text: '취소',
            color: CdsComponentColor.grey,
            onPressed: () {
              if (onCanceled != null) {
                onCanceled!();
              }
              Navigator.of(context).pop();
            },
          ),
        ),
        _buildDivider(axis: Axis.horizontal),
        Expanded(
          child: CdsTextButton.large(
            text: '확인',
            color: CdsComponentColor.grey,
            onPressed: () {
              if (onConfirmed != null) {
                onConfirmed!();
              }
              Navigator.of(context).pop();
            },
          ),
        ),
      ],
    );
  }

  Widget _buildContents() {
    return Column(
      children: [
        Text(
          title,
          style: CdsTextStyles.bodyText1
            ..merge(
              TextStyle(
                color: CdsColors.grey800,
                fontWeight: FontWeight.w600,
              ),
            ),
          textAlign: TextAlign.center,
        ),
        SizedBox(height: 8),
        Text(
          description,
          style: CdsTextStyles.bodyText2.merge(
            TextStyle(color: CdsColors.grey800),
          ),
          textAlign: TextAlign.center,
        ),
      ],
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
