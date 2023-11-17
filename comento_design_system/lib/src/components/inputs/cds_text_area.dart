import 'package:comento_design_system/comento_design_system.dart';
import 'package:flutter/material.dart';

class CdsTextArea extends StatefulWidget {
  final TextEditingController? receivedController;
  final FocusNode? receivedFocusNode;
  final ValueChanged<String>? onChanged;
  final bool autocorrect;
  final double height;
  final String? hintText;

  CdsTextArea({
    TextEditingController? controller,
    FocusNode? focusNode,
    this.onChanged,
    required this.height,
    this.autocorrect = false,
    this.hintText,
  })  : receivedController = controller,
        receivedFocusNode = focusNode,
        super();

  @override
  _CdsTextAreaState createState() => _CdsTextAreaState();
}

class _CdsTextAreaState extends State<CdsTextArea> {
  late final TextEditingController _controller;
  late final FocusNode _focusNode;

  @override
  void initState() {
    super.initState();
    if (widget.receivedController == null) {
      _controller = TextEditingController();
    } else {
      _controller = widget.receivedController!;
    }
    if (widget.receivedFocusNode == null) {
      _focusNode = FocusNode();
    } else {
      _focusNode = widget.receivedFocusNode!;
    }
    _controller.addListener(_handleControllerChanged);
  }

  @override
  void dispose() {
    _controller.removeListener(_handleControllerChanged);
    if (widget.receivedController == null) _controller.dispose();
    if (widget.receivedFocusNode == null) _focusNode.dispose();
    super.dispose();
  }

  void _handleControllerChanged() {
    setState(() {});
  }

  InputDecoration _getInputDecoration() => InputDecoration(
        contentPadding: const EdgeInsets.all(16),
        border: InputBorder.none,
        fillColor: CdsColors.white,
        filled: true,
        hintStyle: TextStyle(color: CdsColors.grey400),
        hintText: widget.hintText,
        counterText: '',
      );

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: widget.height,
      child: TextFormField(
        keyboardType: TextInputType.multiline,
        maxLines: 100000,
        controller: _controller,
        focusNode: _focusNode,
        onChanged: (value) {
          if (widget.onChanged == null) return;
          return widget.onChanged!(value);
        },
        autocorrect: widget.autocorrect,
        cursorColor: CdsColors.grey400,
        decoration: _getInputDecoration(),
        style: CdsTextStyles.pretendardStyle,
      ),
    );
  }
}
