import 'package:comento_design_system/comento_design_system.dart';
import 'package:flutter/material.dart';

class CdsOutlinedLabelTextField extends StatefulWidget {
  final TextEditingController? receivedController;
  final FocusNode? receivedFocusNode;
  final ValueChanged<String>? onChanged;
  final AutovalidateMode autovalidateMode;
  final FormFieldValidator<String>? validator;
  final bool autocorrect;
  final bool obscureText;
  final String? labelText;
  final String? hintText;

  CdsOutlinedLabelTextField({
    TextEditingController? controller,
    FocusNode? focusNode,
    this.onChanged,
    this.autovalidateMode = AutovalidateMode.onUserInteraction,
    this.validator,
    this.autocorrect = true,
    this.obscureText = false,
    this.labelText,
    this.hintText,
  })  : receivedController = controller,
        receivedFocusNode = focusNode,
        super();

  @override
  _CdsOutlinedLabelStateTextField createState() => _CdsOutlinedLabelStateTextField();
}

class _CdsOutlinedLabelStateTextField extends State<CdsOutlinedLabelTextField> {
  late final TextEditingController _controller;
  late final FocusNode _focusNode;
  bool _isInitial = true;

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

  bool get isValid =>
      _isInitial || widget.validator?.call(_controller.value.text) == null;

  InputDecoration _getInputDecoration() => InputDecoration(
        contentPadding: const EdgeInsets.only(left: 16, right: 12),
        labelStyle: TextStyle(
          color: _focusNode.hasFocus
              ? isValid
                  ? CdsColors.comento
                  : CdsColors.error
              : CdsColors.grey250,
        ),
        errorStyle: TextStyle(color: CdsColors.error),
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(
            color: CdsColors.comento,
          ),
          borderRadius: BorderRadius.all(Radius.circular(2)),
        ),
        enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(
            color: CdsColors.grey250,
          ),
          borderRadius: BorderRadius.all(Radius.circular(2)),
        ),
        focusedErrorBorder: const OutlineInputBorder(
          borderSide: BorderSide(
            color: CdsColors.error,
          ),
          borderRadius: BorderRadius.all(Radius.circular(2)),
        ),
        errorBorder: const OutlineInputBorder(
          borderSide: BorderSide(
            color: CdsColors.grey250,
          ),
          borderRadius: BorderRadius.all(Radius.circular(2)),
        ),
        hintStyle: TextStyle(
          color: CdsColors.grey300,
        ),
        labelText: widget.labelText,
        hintText: widget.hintText,
      );

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: _controller,
      focusNode: _focusNode,
      onChanged: (value) {
        _isInitial = false;
        if (widget.onChanged == null) return;
        return widget.onChanged!(value);
      },
      autovalidateMode: widget.autovalidateMode,
      autocorrect: widget.autocorrect,
      obscureText: widget.obscureText,
      validator: widget.validator,
      cursorColor: isValid ? CdsColors.comento : CdsColors.error,
      decoration: _getInputDecoration(),
      style: CdsTextStyles.spoqaHanSansStyle,
    );
  }
}
