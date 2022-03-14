import 'package:comento_design_system/comento_design_system.dart';
import 'package:flutter/material.dart';

class CdsUnderlinedTextField extends StatefulWidget {
  final TextEditingController? receivedController;
  final FocusNode? receivedFocusNode;
  final ValueChanged<String>? onChanged;
  final AutovalidateMode autovalidateMode;
  final FormFieldValidator<String>? validator;
  final bool autocorrect;
  final bool obscureText;
  final String? hintText;

  CdsUnderlinedTextField({
    TextEditingController? controller,
    FocusNode? focusNode,
    this.onChanged,
    this.autovalidateMode = AutovalidateMode.onUserInteraction,
    this.validator,
    this.autocorrect = true,
    this.obscureText = false,
    this.hintText,
  })  : receivedController = controller,
        receivedFocusNode = focusNode,
        super();

  @override
  _CdsUnderlinedTextFieldState createState() => _CdsUnderlinedTextFieldState();
}

class _CdsUnderlinedTextFieldState extends State<CdsUnderlinedTextField> {
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
        contentPadding: const EdgeInsets.only(left: 4, right: 4),
        labelStyle: TextStyle(color: CdsColors.grey300),
        errorStyle: TextStyle(color: CdsColors.error),
        focusedBorder: const UnderlineInputBorder(
          borderSide: BorderSide(
            color: CdsColors.grey400,
          ),
        ),
        enabledBorder: const UnderlineInputBorder(
          borderSide: BorderSide(
            color: CdsColors.grey250,
          ),
        ),
        focusedErrorBorder: const UnderlineInputBorder(
          borderSide: BorderSide(
            color: CdsColors.error,
          ),
        ),
        errorBorder: const UnderlineInputBorder(
          borderSide: BorderSide(
            color: CdsColors.grey250,
          ),
        ),
        hintStyle: TextStyle(
          color: CdsColors.grey300,
        ),
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
      cursorColor: isValid ? CdsColors.grey400 : CdsColors.error,
      decoration: _getInputDecoration(),
      style: CdsTextStyles.pretendardStyle,
    );
  }
}
