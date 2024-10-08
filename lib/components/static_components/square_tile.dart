import 'package:flutter/material.dart';

class SquareTile extends StatelessWidget {
  final String imagePath;
  const SquareTile({super.key, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        border: Border.all(color: const Color.fromARGB(255, 159, 158, 158)),
        borderRadius: BorderRadius.circular(8),
        color: Colors.grey[300],
      ),
      child: Image.asset(imagePath, height: 40,)
    );
  }
}
