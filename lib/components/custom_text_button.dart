import 'package:flutter/material.dart';

class CustomTextButton extends StatelessWidget {
  final String buttonText;
  final VoidCallback onPressed;
  const CustomTextButton(
      {super.key, required this.buttonText, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      style: TextButton.styleFrom(
        foregroundColor: Colors.blue,
        padding: EdgeInsets.zero,
      ).copyWith(
        overlayColor: MaterialStateProperty.all(Colors.transparent),
      ),
      child: Text(buttonText),
    );
  }
}
