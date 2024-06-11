import 'package:comento_design_system/comento_design_system.dart';
import 'package:flutter/material.dart';

class CdsPermissionModal extends StatelessWidget {
  final String title;
  final String description;
  final String? confirmText;
  final Function()? onConfirmed;
  final String? cancelText;
  final Function()? onCanceled;

  CdsPermissionModal({
    required this.title,
    required this.description,
    this.confirmText,
    required this.onConfirmed,
    this.cancelText,
    this.onCanceled,
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
          Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 24.0,
              horizontal: 32.0,
            ),
            child: _Contents(
              title: title,
              description: description,
            ),
          ),
          _Divider(),
          SizedBox(
            height: 48,
            child: _Buttons(
              confirmText: confirmText,
              onConfirmed: onConfirmed,
              cacelText: cancelText,
              onCanceled: onCanceled,
            ),
          ),
        ],
      ),
    );
  }
}

class _Contents extends StatelessWidget {
  const _Contents({
    super.key,
    required this.title,
    required this.description,
  });

  final String title;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          title,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: CdsTextStyles.bodyText1.copyWith(
            color: CdsColors.grey900,
            fontWeight: FontWeight.w600,
          ),
          textAlign: TextAlign.center,
        ),
        SizedBox(height: 8),
        Text(
          description,
          maxLines: 2,
          style: CdsTextStyles.bodyText2.copyWith(
            color: CdsColors.grey800,
          ),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}

class _Divider extends StatelessWidget {
  final Axis axis;
  const _Divider({
    super.key,
    this.axis = Axis.vertical,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: CdsColors.grey200,
      height: axis == Axis.vertical ? 1 : double.infinity,
      width: axis == Axis.horizontal ? 1 : double.infinity,
    );
  }
}

class _Buttons extends StatelessWidget {
  const _Buttons({
    super.key,
    required this.confirmText,
    required this.onConfirmed,
    required this.cacelText,
    required this.onCanceled,
  });

  final String? confirmText;
  final Function()? onConfirmed;
  final String? cacelText;
  final Function()? onCanceled;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: CdsTextButton.large(
            text: cacelText ?? '취소',
            color: CdsComponentColor.grey,
            onPressed: () {
              if (onCanceled != null) {
                onCanceled!();
              }
              Navigator.of(context).pop();
            },
          ),
        ),
        _Divider(axis: Axis.horizontal),
        Expanded(
          child: CdsTextButton.large(
            text: confirmText ?? '확인',
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
}
