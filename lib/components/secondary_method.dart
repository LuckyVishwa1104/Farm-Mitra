import 'package:flutter/material.dart';
import 'static_components/square_tile.dart';

class SecondaryMethod extends StatelessWidget {
  const SecondaryMethod({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SquareTile(imagePath: 'lib/assets/images/google.png'),
        SizedBox(
          width: 25,
        ),
        SquareTile(imagePath: 'lib/assets/images/apple.png')
      ],
    );
  }
}
