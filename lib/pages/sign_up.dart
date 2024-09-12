import 'package:farmmitra/components/navigation/push_replacement_named.dart';
import 'package:farmmitra/components/text_components/input_text.dart';
import 'package:farmmitra/components/button_components/my_button.dart';
import 'package:farmmitra/components/static_components/or_continue_with.dart';
import 'package:farmmitra/components/text_components/password_text_field.dart';
import 'package:farmmitra/components/registration/registration_footer.dart';
import 'package:farmmitra/components/registration/secondary_method.dart';
import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  TextEditingController userNameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  bool _isNotValid1 = false; // for user name
  bool _isNotValid2 = false; // for email
  bool _isNotValid3 = false; // for password
  final _isLoading = false;

  void userRegistration() async {
    // Reset error states initially
    setState(() {
      _isNotValid1 = userNameController.text.isEmpty;
      _isNotValid2 = emailController.text.isEmpty;
      _isNotValid3 = passwordController.text.isEmpty;
    });

    // If all fields are not empty, proceed with registration
    if (userNameController.text.isNotEmpty &&
        emailController.text.isNotEmpty &&
        passwordController.text.isNotEmpty) {
      pushReplacementNamed(context, '/signIn');
      // Code for API connection for registering user
      // ---
    }
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
                // Logo
                const Icon(
                  Icons.lock,
                  size: 100,
                ),
                const SizedBox(
                  height: 20.0,
                ),

                // Welcome message
                Text(
                  "Welcome, let's get started!",
                  style: TextStyle(
                    color: Colors.grey[700],
                    fontSize: 16,
                  ),
                ),
                const SizedBox(
                  height: 20.0,
                ),

                // Text field for first/last name
                InputTextField(
                  controller: userNameController,
                  hintText: 'Your name',
                  existance: _isNotValid1,
                ),
                const SizedBox(
                  height: 20.0,
                ),

                // Text field for email
                InputTextField(
                  controller: emailController,
                  hintText: 'Email',
                  existance: _isNotValid2,
                ),
                const SizedBox(
                  height: 20.0,
                ),

                // Text field for password
                PasswordTextField(
                  controller: passwordController,
                  hintText: 'Password',
                  existance: _isNotValid3,
                ),
                const SizedBox(
                  height: 20.0,
                ),

                // Sign up button
                MyButton(
                  buttonText: 'Sign Up',
                  onPressed: userRegistration,
                ),
                const SizedBox(
                  height: 20.0,
                ),

                // --- or ---
                OrContinueWith(),
                const SizedBox(
                  height: 20.0,
                ),

                // Sign up using google/apple
                SecondaryMethod(),
                const SizedBox(
                  height: 20.0,
                ),

                // Already have an account - sign In
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
