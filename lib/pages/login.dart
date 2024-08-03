import 'dart:ffi';

import 'package:farmmitra/components/my_button.dart';
import 'package:farmmitra/components/square_tile.dart';
import 'package:farmmitra/components/text_field.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final userNameController = TextEditingController();
  final passwordCOntroller = TextEditingController();
  void signUserIn() {}


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[300],
        body:Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment(-0.5, -1.0), // Adjusted for 120 degrees
            end: Alignment(1.0, 0.5), // Adjusted for 120 degrees
            colors: [
              Color.fromARGB(255, 10, 237, 237), //0xFF1BFFFF #2E3192
              Color.fromARGB(255, 33, 103, 234), // #1BFFFF
            ],
          ),
        ),
         child : SafeArea(
          child: Center(
            child: Column(children: [
              // icon
              const Icon(
                Icons.lock,
                size: 100,
              ),

              const SizedBox(
                height: 20,
              ),

              // initial text
              Text(
                'Welcome back!',
                style: TextStyle(
                  color: Colors.grey[700],
                  fontSize: 16,
                ),
              ),

              // input for username
              InputTextField(
                controller: passwordCOntroller,
                hintText: 'Enter username',
                obscureText: false,
              ),

              const SizedBox(
                height: 20,
              ),

              // input for password
              InputTextField(
                controller: passwordCOntroller,
                hintText: 'Enter password',
                obscureText: true,
              ),

              const SizedBox(
                height: 20,
              ),

              // forgot password
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text('Forgot Password?',
                    style: TextStyle(color: Colors.grey[600]),
                    ),
                  ],
                ),
              ),

              const SizedBox(
                height: 20,
              ),

              // sign in button
              MyButton(
                onTap: signUserIn,
              ),

              const SizedBox(height: 50),

              // continue with google or apple
               Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Divider(
                        thickness: 0.5,
                        color: Colors.grey[400],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: Text(
                        'Or continue with',
                        style: TextStyle(color: Colors.grey[700]),
                      ),
                    ),
                    Expanded(
                      child: Divider(
                        thickness: 0.5,
                        color: Colors.grey[400],
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 50),

              // google + apple sign in buttons
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // google button
                  SquareTile(imagePath: 'lib/images/google.png'),

                  SizedBox(width: 25),

                  // apple button
                  SquareTile(imagePath: 'lib/images/apple.png')
                ],
              ),

              const SizedBox(height: 35,),

              // not a member? register now
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Not a member?',
                    style: TextStyle(color: Colors.grey[700]),
                  ),
                  const SizedBox(width: 4),
                  const Text(
                    'Register now',
                    style: TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.bold,
                    ),
                  ),


            ],
            ),
            ],
          ),
          ),
        ),
        )
    );
  }
}
