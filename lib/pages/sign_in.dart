import 'package:farmmitra/components/button_components/custom_text_button.dart';
import 'package:farmmitra/components/navigation/push_named.dart';
import 'package:farmmitra/components/navigation/push_replacement_named.dart';
import 'package:farmmitra/components/text_components/input_text.dart';
import 'package:farmmitra/components/button_components/my_button.dart';
import 'package:farmmitra/components/static_components/or_continue_with.dart';
import 'package:farmmitra/components/text_components/password_text_field.dart';
import 'package:farmmitra/components/registration/registration_footer.dart';
import 'package:farmmitra/components/registration/secondary_method.dart';
import 'package:flutter/material.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  final bool _isNotValid2 = false;
  final bool _isNotValid3 = false;
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

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
                const Icon(
                  Icons.lock,
                  size: 100.0,
                ),
                const SizedBox(
                  height: 20.0,
                ),

                // greeting text
                Text(
                  'Welcome, hope you are doing well!',
                  style: TextStyle(color: Colors.grey[700], fontSize: 16),
                ),
                const SizedBox(
                  height: 20.0,
                ),

                // text field for username
                InputTextField(
                  controller: emailController,
                  hintText: 'Username/Mail',
                  existance: _isNotValid2,
                ),
                const SizedBox(
                  height: 20.0,
                ),

                // text field for password
                PasswordTextField(
                  controller: passwordController,
                  hintText: 'Password',
                  existance: _isNotValid3,
                ),
                const SizedBox(
                  height: 5.0,
                ),

                // forgot password
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 25.0,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      CustomTextButton(
                        buttonText: 'Forgot Password?',
                        onPressed: () => pushReplacementNamed(
                          context,
                          '/forgotPassword',
                        ),
                        fontSize: 15.0,
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20.0,
                ),

                // sign-in button
                MyButton(
                  buttonText: 'Sign In',
                  onPressed: () => pushNamed(
                    context,
                    '/homePage',
                  ),
                ),
                const SizedBox(
                  height: 25.0,
                ),

                // or continue with
                OrContinueWith(),

                const SizedBox(
                  height: 25.0,
                ),

                //google/apple login button
                SecondaryMethod(),
                const SizedBox(
                  height: 20.0,
                ),

                // sign-up page link
                RegistrationFooter(
                  greetMessage: 'Not a member?',
                  buttonText: 'Registre Now!',
                  pageDesignation: '/signUp',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
