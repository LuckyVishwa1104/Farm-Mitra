import 'package:farmmitra/components/my_button.dart';
import 'package:farmmitra/components/square_tile.dart';
import 'package:farmmitra/pages/sign_in.dart';
import 'package:flutter/material.dart';

class DriverProgram extends StatelessWidget {
  const DriverProgram({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:const  Text('My App')),
      body: const Center(
        child: Center(
          child: Column(
            children: [
              SquareTile(imagePath: 'lib/assets/images/google.png'),
              SizedBox(height: 25.0,),
              SquareTile(imagePath: 'lib/assets/images/apple.png')
            ],
          ),
        ),
      ),
    );
  }
}