import 'package:farmmitra/pages/forgot_password.dart';
import 'package:farmmitra/pages/home_page.dart';
import 'package:farmmitra/pages/sign_in.dart';
import 'package:farmmitra/pages/sign_up.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const SignUp(),
      routes: {
        '/signUp' : (context) => const SignUp(),
        '/signIn' : (context) => const SignIn(),
        '/forgotPassword' : (context) => const ForgotPassword(),
        '/homePage' : (context) => const HomePage(),
      },
    );
  }
}
