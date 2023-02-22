import 'package:comento_design_system/comento_design_system.dart';
import 'package:flutter/material.dart';

typedef SearchClicked = Function(String value);

class CdsSearchTextField extends StatefulWidget {
  final TextEditingController? receivedController;
  final FocusNode? receivedFocusNode;
  final ValueChanged<String>? onChanged;
  final void Function(bool hasFocus)? onFocusChanged;
  final SearchClicked? onSearch;
  final AutovalidateMode autovalidateMode;
  final FormFieldValidator<String>? validator;
  final bool autocorrect;
  final bool obscureText;
  final bool initialFocus;
  final String? initialValue;
  final String? hintText;

  CdsSearchTextField({
    TextEditingController? controller,
    FocusNode? focusNode,
    this.onChanged,
    this.onFocusChanged,
    this.onSearch,
    this.autovalidateMode = AutovalidateMode.onUserInteraction,
    this.validator,
    this.autocorrect = false,
    this.obscureText = false,
    this.hintText,
    this.initialFocus = false,
    this.initialValue,
  })  : receivedController = controller,
        receivedFocusNode = focusNode,
        super();

  @override
  _CdsSearchTextFieldState createState() => _CdsSearchTextFieldState();
}

class _CdsSearchTextFieldState extends State<CdsSearchTextField> {
  late final TextEditingController _controller;
  late final FocusNode _focusNode;
  bool _isInitial = true;

  @override
  void initState() {
    super.initState();
    _controller = widget.receivedController ?? TextEditingController();
    _focusNode = widget.receivedFocusNode ?? FocusNode();
    _controller.addListener(_handleControllerChanged);
    _focusNode.addListener(_handleFocusNodeChanged);
    if (widget.onFocusChanged != null) {
      _focusNode.addListener(() => widget.onFocusChanged!(_focusNode.hasFocus));
    }
    if (widget.initialFocus) {
      _focusNode.requestFocus();
    }
    if (widget.initialValue != null) {
      _controller.text = widget.initialValue!;
      if (widget.onChanged != null) {
        widget.onChanged!(_controller.text);
      }
    }
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

  void _handleFocusNodeChanged() {
    setState(() {});
  }

  bool get isValid => _isInitial || widget.validator?.call(value) == null;

  String get value => _controller.value.text;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 32,
      child: TextFormField(
        controller: _controller,
        focusNode: _focusNode,
        onChanged: (value) {
          _isInitial = false;
          if (widget.onChanged == null) return;
          return widget.onChanged!(value);
        },
        textInputAction: TextInputAction.search,
        onFieldSubmitted: widget.onSearch == null ? null : widget.onSearch!,
        autovalidateMode: widget.autovalidateMode,
        autocorrect: widget.autocorrect,
        obscureText: widget.obscureText,
        validator: widget.validator,
        cursorColor: isValid ? CdsColors.grey400 : CdsColors.error,
        decoration: _getInputDecoration(),
        style:
            CdsTextStyles.bodyText2.merge(TextStyle(color: CdsColors.grey800)),
      ),
    );
  }

  InputDecoration _getInputDecoration() => InputDecoration(
        filled: true,
        fillColor: CdsColors.grey100,
        border: _buildBorder(),
        focusedBorder: _buildBorder(),
        disabledBorder: _buildBorder(),
        enabledBorder: _buildBorder(),
        errorBorder: _buildBorder(),
        focusedErrorBorder: _buildBorder(),
        errorStyle: TextStyle(color: CdsColors.error),
        contentPadding: EdgeInsets.zero,
        hintStyle: CdsTextStyles.bodyText2.merge(
          TextStyle(
            color: CdsColors.grey400,
          ),
        ),
        hintText: widget.hintText,
        prefixIcon: _buildSearchButton(),
        suffixIcon: value.isNotEmpty ? _buildClearButton() : null,
      );

  OutlineInputBorder _buildBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(4.0),
      borderSide: BorderSide(style: BorderStyle.none),
    );
  }

  Widget _buildSearchButton() {
    return Container(
      margin: EdgeInsets.only(
        left: 14,
        right: 16,
      ),
      child: GestureDetector(
        onTap: widget.onSearch == null
            ? null
            : () => widget.onSearch!(_controller.value.text),
        child: Icon(
          CustomIcons.icon_search_large_line,
          color: CdsColors.grey500,
          size: 16,
        ),
      ),
    );
  }

  GestureDetector _buildClearButton() {
    return GestureDetector(
      onTap: () {
        _controller.clear();
        if (widget.onChanged == null) return;
        return widget.onChanged!(value);
      },
      child: Icon(
        CustomIcons.icon_closeround_medium_fill,
        color: CdsColors.grey400,
        size: 16,
      ),
    );
  }
}
