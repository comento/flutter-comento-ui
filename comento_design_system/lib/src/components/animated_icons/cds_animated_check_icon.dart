import 'package:comento_design_system/src/strings.dart';
import 'package:flutter/material.dart';
import 'package:rive/rive.dart';

class CdsAnimatedCheckIcon extends StatefulWidget {
  final double? width;
  final double? height;
  final bool isChecked;
  final bool disableToggle;
  final Function()? onTap;
  const CdsAnimatedCheckIcon({
    Key? key,
    this.width,
    this.height,
    this.isChecked = false,
    this.disableToggle = true,
    this.onTap,
  }) : super(key: key);

  @override
  State<CdsAnimatedCheckIcon> createState() => _CdsAnimatedCheckIconState();
}

class _CdsAnimatedCheckIconState extends State<CdsAnimatedCheckIcon> {
  SMIInput<bool>? _isCheckedInput;

  @override
  void didUpdateWidget(CdsAnimatedCheckIcon oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.isChecked == widget.isChecked) return;
    if (_isCheckedInput == null) return;
    _isCheckedInput!.value = widget.isChecked;
  }

  @override
  Widget build(BuildContext context) {
    final icon = _buildIcon();
    if (widget.disableToggle) {
      return icon;
    }
    return GestureDetector(
      onTap: widget.onTap,
      child: icon,
    );
  }

  SizedBox _buildIcon() {
    return SizedBox(
      height: widget.height,
      width: widget.width,
      child: RiveAnimation.asset(
        'packages/$packageName/assets/animations/animated_check_icon.riv',
        onInit: (board) {
          final controller =
              StateMachineController.fromArtboard(board, 'state');
          if (controller == null) return;
          board.addController(controller);
          _isCheckedInput = controller.findInput<bool>('isChecked') as SMIBool;
          _isCheckedInput!.value = widget.isChecked;
        },
        animations: widget.disableToggle ? ['check'] : [],
      ),
    );
  }
}
