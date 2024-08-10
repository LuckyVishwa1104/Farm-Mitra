import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final String buttonText;
  final VoidCallback onPressed;
  const MyButton({super.key, required this.buttonText, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
            onPressed: onPressed,
            style: ElevatedButton.styleFrom(
              foregroundColor: Colors.white, 
              backgroundColor: Colors.black, 
              padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 20), // Text color
              textStyle: const TextStyle(
                fontSize: 16,
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
                 // Rounded corners
              ),
            ).copyWith(
              overlayColor: MaterialStateProperty.all(Colors.transparent)
            ),
            child: Text(buttonText),
    );
  }
}