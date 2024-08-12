import 'package:farmmitra/components/custom_text_button.dart';
import 'package:farmmitra/components/input_text.dart';
import 'package:farmmitra/components/my_button.dart';
import 'package:farmmitra/components/or_continue_with.dart';
import 'package:farmmitra/components/registration_footer.dart';
import 'package:farmmitra/components/secondary_method.dart';
import 'package:farmmitra/components/navigation_util.dart';
import 'package:farmmitra/driver_program.dart';
import 'package:farmmitra/pages/forgot_password.dart';
import 'package:farmmitra/pages/sign_up.dart';
import 'package:flutter/material.dart';

class SignIn extends StatelessWidget {
  const SignIn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          color: Colors.grey.shade100,
        ),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // content of the sign-in page
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
                      CustomTextButton(
                        buttonText: 'Forgot Password?',
                        onPressed: () => redirectTo(
                          context,
                          ForgotPassword(),
                        ),
                        fontSize: 15.0,
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
                  onPressed: () => redirectTo(
                    context,
                    DriverProgram(),
                  ),
                ),
                SizedBox(
                  height: 25.0,
                ),

                // or continue with
                OrContinueWith(),

                SizedBox(
                  height: 25.0,
                ),

                //google/apple login button
                SecondaryMethod(),
                SizedBox(
                  height: 20.0,
                ),

                // sign-up page link
                RegistrationFooter(
                  greetMessage: 'Not a member?',
                  buttonText: 'Registre Now!',
                  pageDesignation: SignUp(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
