import 'package:Taxx/screens/signup/signup_form.dart';
import 'package:flutter/material.dart';



class SignUpScreen extends StatelessWidget {

const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child:  Scaffold(
        body: Padding(
          padding: EdgeInsets.all(12),
          child: SignupForm(),
        ),
      ),
    );
  }
}
