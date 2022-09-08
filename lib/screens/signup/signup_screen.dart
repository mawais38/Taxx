import 'package:Taxx/screens/signup/signup_form.dart';
import 'package:flutter/material.dart';



class SignUpScreen extends StatelessWidget {

const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Material(
      child:  Scaffold(
        body: SignupForm(),
      ),
    );
  }
}
