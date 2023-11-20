import 'package:flutter/material.dart';

class AppButton extends StatefulWidget {
  final String buttonText;
  final Function buttonCallback;
  const AppButton(
      {super.key, required this.buttonText, required this.buttonCallback});

  @override
  State<AppButton> createState() => _AppButtonState();
}

class _AppButtonState extends State<AppButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: double.infinity,
      color: Colors.redAccent,
      child: Material(
        child: InkWell(
          onTap: () => widget.buttonCallback(),
          child: Container(
            width: 40,
            height: double.infinity,
            child: Center(child: Text(widget.buttonText)),
          ),
        ),
        color: Colors.transparent,
      ),
    );
  }
}
