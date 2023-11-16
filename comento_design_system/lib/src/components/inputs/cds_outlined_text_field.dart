import 'package:comento_design_system/comento_design_system.dart';
import 'package:flutter/material.dart';

class CdsOutlinedTextField extends StatefulWidget {
  final TextEditingController? receivedController;
  final FocusNode? receivedFocusNode;
  final ValueChanged<String>? onChanged;
  final void Function()? onTap;
  final void Function(FocusNode focusNode)? onTapOutside;
  final AutovalidateMode autovalidateMode;
  final FormFieldValidator<String>? validator;
  final bool autocorrect;
  final int? maxLength;
  final bool obscureText;
  final bool readOnly;
  final bool hideErrorOnEmpty;
  final String? initialValue;
  final String? hintText;
  final String? errorText;
  final String? successText;
  final Widget? suffix;

  CdsOutlinedTextField({
    TextEditingController? controller,
    FocusNode? focusNode,
    this.onChanged,
    this.onTap,
    this.onTapOutside = defaultOnTapOutside,
    this.autovalidateMode = AutovalidateMode.onUserInteraction,
    this.validator,
    this.autocorrect = false,
    this.maxLength,
    this.obscureText = false,
    this.initialValue,
    this.hintText,
    this.hideErrorOnEmpty = true,
    this.readOnly = false,
    this.errorText,
    this.successText,
    this.suffix,
  })  : receivedController = controller,
        receivedFocusNode = focusNode,
        super();

  @override
  _CdsOutlinedTextFieldState createState() => _CdsOutlinedTextFieldState();
}

class _CdsOutlinedTextFieldState extends State<CdsOutlinedTextField> {
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
    _controller.addListener(emitSetState);
    _focusNode.addListener(emitSetState);
    if (widget.initialValue != null) {
      _controller.text = widget.initialValue!;
    }
  }

  @override
  void dispose() {
    _controller.removeListener(emitSetState);
    _focusNode.removeListener(emitSetState);
    if (widget.receivedController == null) _controller.dispose();
    if (widget.receivedFocusNode == null) _focusNode.dispose();
    super.dispose();
  }

  void emitSetState() {
    setState(() {});
  }

  bool get isEmpty => _controller.text.isEmpty;

  bool get isValid =>
      _isInitial || errorText == null || widget.successText != null;

  String? get errorText {
    final validatorText = widget.validator?.call(_controller.value.text);
    return validatorText ?? widget.errorText;
  }

  InputDecoration _getInputDecoration() => InputDecoration(
        contentPadding: const EdgeInsets.symmetric(horizontal: 16),
        labelStyle: TextStyle(color: CdsColors.grey300),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: widget.readOnly ? CdsColors.grey250 : CdsColors.grey400,
          ),
          borderRadius: BorderRadius.all(Radius.circular(4)),
        ),
        enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(
            color: CdsColors.grey250,
          ),
          borderRadius: BorderRadius.all(Radius.circular(4)),
        ),
        focusedErrorBorder: const OutlineInputBorder(
          borderSide: BorderSide(
            color: CdsColors.error,
          ),
          borderRadius: BorderRadius.all(Radius.circular(4)),
        ),
        helperText: isEmpty ? null : widget.successText,
        helperStyle: CdsTextStyles.caption.merge(
          TextStyle(color: CdsColors.blue600),
        ),
        errorText: isEmpty && widget.hideErrorOnEmpty ? null : widget.errorText,
        errorStyle: CdsTextStyles.caption.merge(
          TextStyle(color: CdsColors.error),
        ),
        errorBorder: const OutlineInputBorder(
          borderSide: BorderSide(
            color: CdsColors.grey250,
          ),
          borderRadius: BorderRadius.all(Radius.circular(4)),
        ),
        hintStyle: TextStyle(
          color: CdsColors.grey300,
        ),
        hintText: widget.hintText,
        counterText: '',
        suffixIcon: isEmpty ? null : widget.suffix,
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
      onTap: () {
        _isInitial = false;
        if (widget.onTap == null) return;
        widget.onTap!();
      },
      onTapOutside: (_) {
        if (widget.onTapOutside == null) return;
        widget.onTapOutside!(_focusNode);
      },
      readOnly: widget.readOnly,
      maxLength: widget.maxLength,
      autovalidateMode: widget.autovalidateMode,
      autocorrect: widget.autocorrect,
      obscureText: widget.obscureText,
      validator: widget.validator,
      cursorColor: isValid || isEmpty ? CdsColors.grey400 : CdsColors.error,
      decoration: _getInputDecoration(),
      style: CdsTextStyles.bodyText1.merge(
        TextStyle(
          color: isValid || !_focusNode.hasFocus
              ? CdsColors.grey800
              : CdsColors.error,
          height: 1.54,
        ),
      ),
    );
  }
}

void defaultOnTapOutside(FocusNode focusNode) {
  focusNode.unfocus();
}
