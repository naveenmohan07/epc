import 'package:flutter/material.dart';

class AppInput extends StatefulWidget {
  final bool? isEnabled;
  final TextInputType? inputType;
  final bool isObscure;
  final bool isEditable;
  const AppInput({
    super.key,
    this.isEnabled,
    this.inputType = TextInputType.text,
    this.isObscure = false,
    this.isEditable = true,
  });

  @override
  State<AppInput> createState() => _AppInputState();
}

class _AppInputState extends State<AppInput> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      enabled: widget.isEnabled,
      keyboardType: widget.inputType,
      obscureText: widget.isObscure,
      readOnly: widget.isEditable,
    );
  }
}
