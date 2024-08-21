import 'package:farmmitra/components/button_components/custom_text_button.dart';
import 'package:farmmitra/components/text_components/input_text.dart';
import 'package:farmmitra/components/button_components/my_button.dart';
import 'package:farmmitra/components/text_components/otp_text_field.dart';
import 'package:farmmitra/components/text_components/password_text_field.dart';
import 'package:farmmitra/pages/sign_in.dart';
import 'package:flutter/material.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({super.key});

  void resetPassword(BuildContext context) {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) => const SignIn(),
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
              // icon for simplicity
              Icon(
                  Icons.lock,
                  size: 100,
                ),
              SizedBox(
                  height: 20.0,
                ),
                Text(
                  "Reset your Password to continue.",
                  style: TextStyle(color: Colors.grey[700], fontSize: 16),
                ),
                SizedBox(
                  height: 20.0,
                ),
              // input field for email address
              InputTextField(
                hintText: 'Email address',
              ),
              SizedBox(
                height: 20.0,
              ),

              // text field for new password
              PasswordTextField(hintText: 'New password'),
              SizedBox(
                height: 20.0,
              ),

              // text field for confirming new password
              PasswordTextField(hintText: 'Confirm password'),
              SizedBox(
                height: 25.0,
              ),

              // text to get OTP
              CustomTextButton(
                buttonText: 'Get OTP!',
                onPressed: () => generateOTP(),
                fontSize: 16.0,
              ),
              SizedBox(
                height: 2.0,
              ),

              // input field for OTP
              OtpTextField(onCompleted: (otp) {
                print('Entered OTP: $otp');
                // Handle OTP submission here
              },),
              SizedBox(
                height: 28.0,
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
