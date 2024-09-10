import 'package:farmmitra/components/navigation/push_named.dart';
import 'package:farmmitra/components/text_components/input_text.dart';
import 'package:farmmitra/components/button_components/my_button.dart';
import 'package:farmmitra/components/static_components/or_continue_with.dart';
import 'package:farmmitra/components/text_components/password_text_field.dart';
import 'package:farmmitra/components/registration_footer.dart';
import 'package:farmmitra/components/secondary_method.dart';
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
        decoration: BoxDecoration(color: Colors.grey.shade100),
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
                SizedBox(
                  height: 20.0,
                ),

                // welcome message
                Text(
                  "Welcome, let's get started!",
                  style: TextStyle(color: Colors.grey[700], fontSize: 16),
                ),
                SizedBox(
                  height: 20.0,
                ),

                // text field for first/last name
                InputTextField(hintText: 'Your name'),
                SizedBox(
                  height: 20.0,
                ),

                // text field for userId
                InputTextField(hintText: 'Username'),
                SizedBox(
                  height: 20.0,
                ),

                // text field for password
                PasswordTextField(hintText: 'Password'),
                SizedBox(
                  height: 20.0,
                ),

                // sign up button
                MyButton(
                  buttonText: 'Sign Up',
                  onPressed: () => pushNamed(context,'/signIn'),
                ),
                SizedBox(
                  height: 20.0,
                ),

                // --- or ---
                OrContinueWith(),
                SizedBox(
                  height: 20.0,
                ),

                // sign up using google/apple
                SecondaryMethod(),
                SizedBox(
                  height: 20.0,
                ),

                // already have account - sign In
                RegistrationFooter(
                  greetMessage: 'Already have account?',
                  buttonText: 'Sign In!',
                  pageDesignation: '/signIn',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
