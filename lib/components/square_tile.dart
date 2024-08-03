import 'package:farmmitra/components/input_text.dart';
import 'package:farmmitra/pages/sign_in.dart';
import 'package:flutter/material.dart';

class SquareTile extends StatelessWidget {
  const SquareTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Square Tile')),
      body: Center(
        child: InputTextField(
          buttonText: 'Bcak',
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