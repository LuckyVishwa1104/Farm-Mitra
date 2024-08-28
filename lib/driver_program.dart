import 'package:farmmitra/components/text_components/input_text.dart';
import 'package:farmmitra/components/button_components/my_button.dart';
import 'package:farmmitra/components/text_components/password_text_field.dart';
import 'package:farmmitra/pages/sign_in.dart';
import 'package:flutter/material.dart';

class DriverProgram extends StatelessWidget {
  const DriverProgram({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:const  Text('My App')),
      backgroundColor: Colors.grey.shade300,
      body: Center(
          child: Column(
            children: [
              SizedBox(height: 25.0,),
              MyButton(buttonText: 'back', onPressed: () =>{
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> SignIn()))
              }),
              SizedBox(height: 25.0,),
              InputTextField(hintText: 'Username'),
              SizedBox(height: 25.0,),
              InputTextField(hintText: 'Password'),
              SizedBox(height: 25.0,),
              PasswordTextField(hintText: 'Password')
            ],
          ),
      ),
    );
  }
}