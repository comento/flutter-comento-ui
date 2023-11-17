import 'package:comento_design_system/comento_design_system.dart';
import 'package:flutter/material.dart';

class CdsOutlinedTextArea extends StatefulWidget {
  final TextEditingController? receivedController;
  final FocusNode? receivedFocusNode;
  final ValueChanged<String>? onChanged;
  final void Function()? onTap;
  final void Function(FocusNode focusNode)? onTapOutside;
  final AutovalidateMode autovalidateMode;
  final FormFieldValidator<String>? validator;
  final bool autocorrect;
  final bool hideErrorOnEmpty;
  final String? hintText;
  final int? maxLength;
  final double height;
  final String? errorText;

  CdsOutlinedTextArea({
    TextEditingController? controller,
    FocusNode? focusNode,
    this.onChanged,
    this.onTap,
    required this.height,
    this.autovalidateMode = AutovalidateMode.onUserInteraction,
    this.onTapOutside = defaultOnTapOutside,
    this.autocorrect = false,
    this.validator,
    this.hintText,
    this.hideErrorOnEmpty = true,
    this.maxLength,
    this.errorText,
  })  : receivedController = controller,
        receivedFocusNode = focusNode,
        super();

  @override
  _CdsOutlinedTextAreaState createState() => _CdsOutlinedTextAreaState();
}

class _CdsOutlinedTextAreaState extends State<CdsOutlinedTextArea> {
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

  bool get isValid => _isInitial || errorText == null;

  String? get errorText {
    final validatorText = widget.validator?.call(_controller.value.text);
    return validatorText ?? widget.errorText;
  }

  InputDecoration _getInputDecoration() => InputDecoration(
        contentPadding: const EdgeInsets.all(16),
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(
            color: CdsColors.grey400,
          ),
          borderRadius: BorderRadius.zero,
        ),
        enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(
            color: CdsColors.grey250,
          ),
          borderRadius: BorderRadius.zero,
        ),
        focusedErrorBorder: const OutlineInputBorder(
          borderSide: BorderSide(
            color: CdsColors.error,
          ),
          borderRadius: BorderRadius.all(Radius.circular(4)),
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
        fillColor: CdsColors.white,
        filled: true,
        hintStyle: TextStyle(color: CdsColors.grey300),
        hintText: widget.hintText,
      );

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: widget.height,
      child: TextFormField(
        keyboardType: TextInputType.multiline,
        maxLines: 100000,
        controller: _controller,
        autovalidateMode: widget.autovalidateMode,
        maxLength: widget.maxLength,
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
        autocorrect: widget.autocorrect,
        cursorColor: CdsColors.grey400,
        decoration: _getInputDecoration(),
        style: CdsTextStyles.pretendardStyle,
      ),
    );
  }
}
