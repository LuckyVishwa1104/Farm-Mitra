import 'package:farmmitra/components/input_text.dart';
import 'package:farmmitra/pages/sign_in.dart';
import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  const MyButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('My Button')),
      body: Center(
        child: InputTextField(
          buttonText: 'Back',
          onPressed: () {
            // Navigate to Dashboard on sign in
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const SignIn()),
            );
          },
        ),
        
      ),
    );
  }
}