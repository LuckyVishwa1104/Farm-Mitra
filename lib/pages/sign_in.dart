import 'package:farmmitra/components/button_components/custom_text_button.dart';
import 'package:farmmitra/components/text_components/input_text.dart';
import 'package:farmmitra/components/button_components/my_button.dart';
import 'package:farmmitra/components/static_components/or_continue_with.dart';
import 'package:farmmitra/components/text_components/password_text_field.dart';
import 'package:farmmitra/components/registration_footer.dart';
import 'package:farmmitra/components/secondary_method.dart';
import 'package:farmmitra/components/navigation_util.dart';
import 'package:farmmitra/pages/forgot_password.dart';
import 'package:farmmitra/pages/home_page.dart';
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
                InputTextField(hintText: 'Username'),
                SizedBox(
                  height: 20.0,
                ),

                // text field for password
                PasswordTextField(hintText: 'Password'),
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
                    HomePage(),
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
