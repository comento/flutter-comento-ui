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
  final bool ignoreErrorOnEmpty;
  final bool ignoreErrorOnCondition;
  final String? hintText;
  final int? maxLength;
  final double areaHeight;
  final String? errorText;

  CdsOutlinedTextArea({
    TextEditingController? controller,
    FocusNode? focusNode,
    this.onChanged,
    this.onTap,
    required this.areaHeight,
    this.autovalidateMode = AutovalidateMode.onUserInteraction,
    void Function(FocusNode focusNode)? onTapOutside,
    this.autocorrect = false,
    this.validator,
    this.hintText,
    this.ignoreErrorOnEmpty = true,
    this.ignoreErrorOnCondition = false,
    this.maxLength,
    this.errorText,
  })  : receivedController = controller,
        receivedFocusNode = focusNode,
        onTapOutside = onTapOutside ?? defaultOnTapOutside,
        super();

  @override
  _CdsOutlinedTextAreaState createState() => _CdsOutlinedTextAreaState();
}

class _CdsOutlinedTextAreaState extends State<CdsOutlinedTextArea> {
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

  String? get _errorText {
    final validatorText = widget.validator?.call(_controller.value.text);
    return validatorText ?? widget.errorText;
  }

  FieldErrorState get _errorState {
    if (_errorText == null) {
      return FieldErrorState.none;
    }
    if (widget.ignoreErrorOnCondition) {
      return FieldErrorState.hideAll;
    }

    if (isEmpty) {
      return widget.ignoreErrorOnEmpty
          ? FieldErrorState.hideAll
          : FieldErrorState.hideErrorText;
    }
    return FieldErrorState.showAll;
  }

  InputDecoration _getInputDecoration() => InputDecoration(
        contentPadding: const EdgeInsets.all(16),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: switch (_errorState) {
              FieldErrorState.hideErrorText => CdsColors.error,
              FieldErrorState.showAll => CdsColors.error,
              _ => CdsColors.grey250,
            },
          ),
          borderRadius: BorderRadius.all(Radius.circular(4)),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: switch (_errorState) {
              FieldErrorState.hideErrorText => CdsColors.error,
              FieldErrorState.showAll => CdsColors.error,
              _ => CdsColors.grey400,
            },
          ),
          borderRadius: BorderRadius.all(Radius.circular(4)),
        ),
        focusedErrorBorder: const OutlineInputBorder(
          borderSide: BorderSide(
            color: CdsColors.error,
          ),
          borderRadius: BorderRadius.all(Radius.circular(4)),
        ),
        fillColor: CdsColors.white,
        filled: true,
        hintStyle: TextStyle(
          color: _errorState == FieldErrorState.none ||
                  _errorState == FieldErrorState.hideAll
              ? CdsColors.grey300
              : CdsColors.error,
        ),
        counterText: '',
        hintText: widget.hintText,
        labelStyle: TextStyle(color: CdsColors.grey300),
      );

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: widget.areaHeight,
          child: TextFormField(
            keyboardType: TextInputType.multiline,
            maxLines: 100000,
            controller: _controller,
            autovalidateMode: widget.autovalidateMode,
            maxLength: widget.maxLength,
            focusNode: _focusNode,
            onChanged: (value) {
              if (widget.onChanged == null) return;
              return widget.onChanged!(value);
            },
            onTap: () {
              if (widget.onTap == null) return;
              widget.onTap!();
            },
            onTapOutside: (_) {
              if (widget.onTapOutside == null) return;
              widget.onTapOutside!(_focusNode);
            },
            autocorrect: widget.autocorrect,
            cursorColor: switch (_errorState) {
              FieldErrorState.hideErrorText => CdsColors.error,
              FieldErrorState.showAll => CdsColors.error,
              _ => CdsColors.grey400,
            },
            decoration: _getInputDecoration(),
            style: CdsTextStyles.bodyText1.copyWith(color: CdsColors.grey800),
          ),
        ),
        SizedBox(height: 12),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            AnimatedOpacity(
              duration: Duration(milliseconds: 167),
              opacity: switch (_errorState) {
                FieldErrorState.showAll => 1,
                _ => 0,
              },
              child: AnimatedSlide(
                duration: Duration(milliseconds: 167),
                offset: Offset(
                  0.0,
                  switch (_errorState) {
                    FieldErrorState.showAll => 0,
                    _ => -0.25,
                  },
                ),
                child: switch (_errorState) {
                  FieldErrorState.showAll => Text(
                      _errorText!,
                      style: CdsTextStyles.caption.merge(
                        TextStyle(color: CdsColors.error),
                      ),
                    ),
                  _ => null,
                },
              ),
            ),
            Text.rich(
              TextSpan(
                text: '글자수 : ',
                style: CdsTextStyles.caption.copyWith(
                  color: CdsColors.grey400,
                ),
                children: [
                  TextSpan(
                    text: '${_controller.text.length}',
                    style: TextStyle(
                      color: switch (_errorState) {
                        FieldErrorState.showAll => CdsColors.error,
                        _ => CdsColors.grey400,
                      },
                    ),
                  ),
                  TextSpan(text: ' / ${widget.maxLength}'),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
