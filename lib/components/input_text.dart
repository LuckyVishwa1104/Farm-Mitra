import 'package:flutter/material.dart';

class InputTextField extends StatelessWidget {
  final String buttonText;
  final VoidCallback onPressed;
  const InputTextField(
      {super.key, required this.buttonText, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Center(
          child: ElevatedButton(
            onPressed: onPressed,
            style: ElevatedButton.styleFrom(
              foregroundColor: Colors.white, 
              backgroundColor: Colors.black, 
              padding: const EdgeInsets.all(25), // Text color
              textStyle: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8), // Rounded corners
              ),
            ),
            child: Text(buttonText),
          ),
    );
  }
}
