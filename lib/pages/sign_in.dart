import 'package:farmmitra/components/input_text.dart';
import 'package:farmmitra/components/my_button.dart';
import 'package:farmmitra/components/square_tile.dart';
import 'package:farmmitra/driver_program.dart';
import 'package:flutter/material.dart';

class SignIn extends StatelessWidget {
  const SignIn({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            color: Colors.grey.shade200,
          ),
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // content of the sign-in page
                  // SizedBox(height: 20.0,),
                  // logo/icon
                  Icon(
                    Icons.lock,
                    size: 100.0,
                  ),
                  SizedBox(
                    height: 20.0,
                  ),

                  // greeting text
                  Text(
                    'Welcome, hope you are doing well!',
                    style: TextStyle(color: Colors.grey[700], fontSize: 16),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),

                  // text field for username
                  InputTextField(hintText: 'Username', obscureText: false),
                  SizedBox(
                    height: 20.0,
                  ),

                  // text field for password
                  InputTextField(hintText: 'Password', obscureText: true),
                  SizedBox(
                    height: 5.0,
                  ),

                  // forgot password
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          'Forgot Password?',
                          style: TextStyle(
                            color: Colors.grey[700],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),

                  // sign-in button
                  MyButton(
                      buttonText: 'Sign In',
                      onPressed: () => {
                            Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => DriverProgram()))
                          }),
                  SizedBox(
                    height: 25.0,
                  ),

                  // or continue with
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25.0),
                    child: Row(
                      children: [
                        Expanded(
                            child: Divider(
                          thickness: 0.5,
                          color: Colors.grey[700],
                        )),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          child: Text(
                            'Or continue with',
                            style: TextStyle(color: Colors.grey.shade700),
                          ),
                        ),
                        Expanded(
                            child: Divider(
                          thickness: 0.5,
                          color: Colors.grey[700],
                        )),
                      ],
                    ),
                  ),

                  SizedBox(
                    height: 25.0,
                  ),

                  //google/apple login button
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SquareTile(imagePath: 'lib/assets/images/google.png'),
                      SizedBox(
                        width: 25,
                      ),
                      SquareTile(imagePath: 'lib/assets/images/apple.png')
                    ],
                  ),
                  SizedBox(
                    height: 20.0,
                  ),

                  // sign-up page link
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Not a member?',style: TextStyle(color: Colors.grey[700]),),
                      SizedBox(width: 4.0,),
                      Text(
                            'Register now!',
                            style: TextStyle(color: Colors.blue),
                          ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
