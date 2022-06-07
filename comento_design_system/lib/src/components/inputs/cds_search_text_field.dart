import 'package:comento_design_system/comento_design_system.dart';
import 'package:flutter/material.dart';

typedef SearchClicked = Function(String value);

class CdsSearchTextField extends StatefulWidget {
  final TextEditingController? receivedController;
  final FocusNode? receivedFocusNode;
  final ValueChanged<String>? onChanged;
  final SearchClicked? onSearch;
  final AutovalidateMode autovalidateMode;
  final FormFieldValidator<String>? validator;
  final bool autocorrect;
  final bool obscureText;
  final bool initialFocus;
  final String? hintText;

  CdsSearchTextField({
    TextEditingController? controller,
    FocusNode? focusNode,
    this.onChanged,
    this.onSearch,
    this.autovalidateMode = AutovalidateMode.onUserInteraction,
    this.validator,
    this.autocorrect = false,
    this.obscureText = false,
    this.hintText,
    this.initialFocus = false,
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
    if (widget.initialFocus) {
      _focusNode.requestFocus();
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
      height: 40,
      child: TextFormField(
        controller: _controller,
        focusNode: _focusNode,
        onChanged: (value) {
          _isInitial = false;
          if (widget.onChanged == null) return;
          return widget.onChanged!(value);
        },
        textInputAction: TextInputAction.go,
        onFieldSubmitted: widget.onSearch == null ? null : widget.onSearch!,
        autovalidateMode: widget.autovalidateMode,
        autocorrect: widget.autocorrect,
        obscureText: widget.obscureText,
        validator: widget.validator,
        cursorColor: isValid ? CdsColors.grey400 : CdsColors.error,
        decoration: _getInputDecoration(),
        style: CdsTextStyles.pretendardStyle
            .merge(TextStyle(color: CdsColors.grey800)),
      ),
    );
  }

  InputDecoration _getInputDecoration() => InputDecoration(
        filled: true,
        fillColor: _focusNode.hasFocus ? CdsColors.grey100 : CdsColors.grey000,
        border: _buildBorder(),
        focusedBorder: _buildBorder(),
        disabledBorder: _buildBorder(),
        enabledBorder: _buildBorder(),
        errorBorder: _buildBorder(),
        focusedErrorBorder: _buildBorder(),
        contentPadding: const EdgeInsets.only(left: 14),
        errorStyle: TextStyle(color: CdsColors.error),
        hintStyle: TextStyle(color: CdsColors.grey400),
        hintText: widget.hintText,
        suffixIcon: _buildActions(),
      );

  OutlineInputBorder _buildBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(4.0),
      borderSide: BorderSide(style: BorderStyle.none),
    );
  }

  Widget _buildActions() {
    return Container(
      width: 64,
      padding: const EdgeInsets.only(right: 12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          if (value.isNotEmpty) _buildClearButton(),
          SizedBox(width: 8),
          _buildSearchButton(),
        ],
      ),
    );
  }

  GestureDetector _buildClearButton() {
    return GestureDetector(
      onTap: () => _controller.clear(),
      child: Icon(
        CustomIcons.icon_closeround_medium_fill,
        color: CdsColors.grey300,
        size: 14,
      ),
    );
  }

  GestureDetector _buildSearchButton() {
    return GestureDetector(
      onTap: widget.onSearch == null
          ? null
          : () => widget.onSearch!(_controller.value.text),
      child: Icon(
        CustomIcons.icon_search_large_line,
        color: CdsColors.grey500,
      ),
    );
  }
}
