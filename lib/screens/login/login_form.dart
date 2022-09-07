import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'bloc/login_bloc.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({Key? key}) : super(key: key);

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  bool _showPassword = false;

  @override
  Widget build(BuildContext context) {
    _onLoginButtonPressed() {
      BlocProvider.of<LoginBloc>(context).add(
        LoginButtonPressed(
          username: _emailController.text,
          password: _passwordController.text,
        ),
      );
    }

    return BlocListener<LoginBloc, LoginState>(
      listener: (context, state) {
        if (state is LoginFailure) {
          Scaffold.of(context).showSnackBar(
            const SnackBar(
              content: Text('Wrong username or password. Please try again.'),
              backgroundColor: Colors.red,
            ),
          );
        }
      },
      child: BlocBuilder<LoginBloc, LoginState>(
        builder: (context, state) {
          return Padding(
            padding: const EdgeInsets.all(15),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  const Text(
                    "SIGNUP",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: Color(0xff174896)),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 150,
                      width: 350,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/carservice.gif'),
                          fit: BoxFit.cover,
                          // colorFilter: ColorFilter.mode(Colors.black45, BlendMode.darken)
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                    height: 55,
                    width: 320,
                    child: TextFormField(
                      decoration: const InputDecoration(
                        filled: true,
                        fillColor: Color(0xfff0e6ff),
                        prefixIcon: Icon(
                          Icons.person,
                          color: Color(0xff325aa3),
                        ),
                        hintText: 'Your Email',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(27)),
                        ),
                      ),
                      controller: _emailController,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    height: 55,
                    width: 320,
                    child: TextFormField(
                      decoration: const InputDecoration(
                          filled: true,
                          fillColor: Color(0xfff0e6ff),
                          prefixIcon: Icon(
                            Icons.lock,
                            color: Color(0xff325aa3),
                          ),
                          hintText: 'Password',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(27)),
                          ),
                          suffixIcon: Icon(Icons.remove_red_eye)),
                      controller: _passwordController,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: 50,
                    width: 320,
                    decoration: const BoxDecoration(
                        color: Color(0xff0e47a1),
                        borderRadius: BorderRadius.all(Radius.circular(32))),
                    child: const FloatingActionButton.extended(
                        backgroundColor: Color(0xff0e47a1),
                        onPressed: null,
                        label: Text("SIGNUP")),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text("Already have an Account?",style:TextStyle(fontSize: 16,fontWeight: FontWeight.w400),),
                      TextButton(
                        style: TextButton.styleFrom(
                          primary: const Color(0xff0e47a1),


                        ),
                        onPressed: () {},
                        child: const Text('Sign In',style:TextStyle(fontSize: 14,fontWeight: FontWeight.w600),),
                      )
                    ],
                  ),
                  const Text("OR"),
                  const SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            border: Border.all(color: Color(0xffF8F2FE), width: 1)),
                        child: const Icon(
                          Icons.facebook,
                          size: 25,
                          color: Colors.blueAccent,
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            border: Border.all(color: Color(0xffF8F2FE), width: 1)),
                        child: const Icon(
                          FontAwesomeIcons.twitter,
                          size: 25,
                          color: Colors.blue,
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            border: Border.all(color: Color(0xffF8F2FE), width: 1)),
                        child:const Icon(
                          FontAwesomeIcons.googlePlus,
                          size: 25,
                          color: Colors.red,
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                    ],
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
