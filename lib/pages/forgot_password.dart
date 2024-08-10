import 'package:farmmitra/components/custom_text_button.dart';
import 'package:farmmitra/components/input_text.dart';
import 'package:farmmitra/components/my_button.dart';
import 'package:farmmitra/pages/sign_in.dart';
import 'package:flutter/material.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({super.key});

  void resetPassword(BuildContext context) {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) => SignIn(),
      ),
    );
  }

  void generateOTP() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // text field for new password
              InputTextField(
                hintText: 'New Password',
                obscureText: true,
              ),
              SizedBox(
                height: 20.0,
              ),

              // text field for confirming new password
              InputTextField(
                hintText: 'Confirm password',
                obscureText: true,
              ),
              SizedBox(
                height: 25.0,
              ),

              // text to get OTP
              CustomTextButton(
                buttonText: 'Get OTP!',
                onPressed: () => generateOTP(),
                fontSize: 20.0,
              ),
              SizedBox(
                height: 15.0,
              ),

              // input field for OTP
              InputTextField(
                hintText: 'Enter OTP!',
                obscureText: false,
              ),
              SizedBox(
                height: 25.0,
              ),

              // button for restting the password
              MyButton(
                buttonText: 'Reset Password',
                onPressed: () => resetPassword(context),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
