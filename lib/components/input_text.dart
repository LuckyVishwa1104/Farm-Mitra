import 'package:flutter/material.dart';

class InputTextField extends StatelessWidget {
  final bool obscureText;
  final String hintText;
  const InputTextField({
    super.key,
    required this.hintText,
    required this.obscureText
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0,),
      child: TextField(
        obscureText: obscureText,
        decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey.shade500)),
          focusedBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: Colors.black, width: 1.5)),
          fillColor: Colors.grey.shade200,
          filled: true,
          hintText: hintText,
          contentPadding: const EdgeInsets.symmetric(vertical: 18,horizontal: 10)
          
        ),
      ),
    );
  }
}
