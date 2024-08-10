import 'package:farmmitra/components/input_text.dart';
import 'package:farmmitra/components/my_button.dart';
import 'package:farmmitra/components/square_tile.dart';
import 'package:farmmitra/pages/sign_in.dart';
import 'package:flutter/material.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  void redirectToSignIn(BuildContext context) {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) => const SignIn(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: Container(
        width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(color: Colors.grey.shade200),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // content of sign up page
                // logo
                Icon(
                  Icons.lock,
                  size: 100,
                ),

                // welcome message
                SizedBox(
                  height: 20.0,
                ),
                Text(
                  "Welcome, let's get started!",
                  style: TextStyle(color: Colors.grey[700], fontSize: 16),
                ),
                SizedBox(
                  height: 20.0,
                ),

                // text field for first/last name
                InputTextField(hintText: 'Your name', obscureText: false),
                SizedBox(
                  height: 20.0,
                ),

                // text field for userId
                InputTextField(hintText: 'Username', obscureText: false),
                SizedBox(
                  height: 20.0,
                ),

                // text field for password
                InputTextField(hintText: 'Password', obscureText: true),
                SizedBox(
                  height: 20.0,
                ),

                // sign up button
                MyButton(
                  buttonText: 'Sign Up',
                  onPressed: () => redirectToSignIn(context),
                ),
                SizedBox(
                  height: 20.0,
                ),

                // --- or ---
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Row(
                    children: [
                      Expanded(
                        child: Divider(
                          thickness: 0.5,
                          color: Colors.grey[700],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: Text(
                          'Or continue with',
                          style: TextStyle(color: Colors.grey[700]),
                        ),
                      ),
                      Expanded(
                        child: Divider(
                          thickness: 0.5,
                          color: Colors.grey[700],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),

                // sign up using google/apple
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

                // already have account - sign In
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Already have account?',style: TextStyle(color: Colors.grey[700]),),
                    SizedBox(width: 4.0,),
                    Text(
                          'Sign In!',
                          style: TextStyle(color: Colors.blue),
                        ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
