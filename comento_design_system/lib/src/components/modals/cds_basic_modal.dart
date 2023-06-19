import 'package:comento_design_system/comento_design_system.dart';
import 'package:flutter/material.dart';

class CdsBasicModal extends StatelessWidget {
  final String? title;
  final String? description;
  final Widget? customContent;
  final Function()? onConfirmed;
  final Function()? onClosed;
  final String confirmButtonName;
  CdsBasicModal({
    this.title,
    this.description,
    this.customContent,
    this.onConfirmed,
    this.onClosed,
    this.confirmButtonName = '확인',
  });

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(10.0)),
      ),
      insetPadding: EdgeInsets.symmetric(horizontal: 24),
      elevation: 0,
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 32.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 40),
                customContent ?? _buildDefaultContents(),
                SizedBox(height: 24),
                _buildConfirmButton(context),
                SizedBox(height: 32),
              ],
            ),
          ),
          _buildCloseButton(context),
        ],
      ),
    );
  }

  Widget _buildConfirmButton(BuildContext context) {
    return CdsElevatedButton.largeFull(
      text: confirmButtonName,
      color: CdsComponentColor.blue,
      onPressed: () {
        if (onConfirmed != null) {
          onConfirmed!();
        }
        Navigator.of(context).pop();
      },
    );
  }

  Widget _buildDefaultContents() {
    if (title == null || description == null) return SizedBox.shrink();
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          title!,
          style: CdsTextStyles.headline5
            ..merge(
              TextStyle(
                color: CdsColors.grey900,
                fontWeight: FontWeight.w400,
                height: 1.0,
              ),
            ),
          textAlign: TextAlign.center,
        ),
        SizedBox(height: 16),
        Text(
          description!,
          style: CdsTextStyles.bodyText2.merge(
            TextStyle(
              color: CdsColors.grey800,
              height: 1.7,
            ),
          ),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }

  Widget _buildCloseButton(BuildContext context) {
    return Positioned(
      top: 12,
      right: 12,
      child: GestureDetector(
        onTap: () {
          if (onClosed != null) {
            onClosed!();
          }
          Navigator.of(context).pop();
        },
        child: Icon(
          CustomIcons.icon_close_xlarge_line,
          size: 28,
          color: CdsColors.grey400,
        ),
      ),
    );
  }
}
