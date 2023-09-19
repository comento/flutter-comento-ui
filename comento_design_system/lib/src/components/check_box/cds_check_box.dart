import 'package:comento_design_system/comento_design_system.dart';
import 'package:comento_design_system/src/strings.dart';
import 'package:flutter/material.dart';
import 'package:rive/rive.dart';

class CdsCheckBox extends StatefulWidget {
  final CdsSize size;
  final bool? initialValue;
  final Function(bool value) onChanged;
  const CdsCheckBox({
    Key? key,
    this.size = CdsSize.medium,
    this.initialValue,
    required this.onChanged,
  }) : super(key: key);

  @override
  State<CdsCheckBox> createState() => _CdsCheckBoxState();
}

class _CdsCheckBoxState extends State<CdsCheckBox> {
  SMIInput<bool>? _isCheckedInput;

  Size _getSize() {
    switch (widget.size) {
      case CdsSize.xSmall:
        return Size(16, 16);
      case CdsSize.small:
        return Size(18, 18);
      case CdsSize.medium:
      default:
        return Size(20, 20);
    }
  }

  Size _getIconSize() {
    switch (widget.size) {
      case CdsSize.xSmall:
      case CdsSize.small:
        return Size(12, 12);
      case CdsSize.medium:
      default:
        return Size(16, 16);
    }
  }

  @override
  Widget build(BuildContext context) {
    final size = _getSize();
    final iconSize = _getIconSize();
    return GestureDetector(
      onTap: () {
        if (_isCheckedInput == null) return;
        _isCheckedInput!.value = !_isCheckedInput!.value;
        widget.onChanged(_isCheckedInput!.value);
      },
      child: Container(
        height: size.height,
        width: size.width,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: CdsColors.white,
          border: Border.all(
            color: CdsColors.primary,
            width: 1.0,
          ),
          borderRadius: BorderRadius.circular(4.0),
        ),
        child: SizedBox(
          height: iconSize.height,
          width: iconSize.width,
          child: RiveAnimation.asset(
            'packages/$packageName/assets/animations/animated_check_icon.riv',
            onInit: (board) {
              final controller =
                  StateMachineController.fromArtboard(board, 'state');
              if (controller == null) return;
              board.addController(controller);
              _isCheckedInput =
                  controller.findInput<bool>('isChecked') as SMIBool;
              _isCheckedInput!.value = widget.initialValue ?? false;
            },
          ),
        ),
      ),
    );
  }
}
