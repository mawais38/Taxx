import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'bloc/login_bloc.dart';

class LoginForm extends StatefulWidget {
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
              content:
                  const Text('Wrong username or password. Please try again.'),
              backgroundColor: Colors.red,
            ),
          );
        }
      },
      child: BlocBuilder<LoginBloc, LoginState>(
        builder: (context, state) {
          return Padding(
            padding: const EdgeInsets.only(left: 12),
            child: Column(
              children: [
                // Text("sdfdsf", style: TextStyle(fontSize: 30),),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 150,
                    width: 350,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/images/carservice.gif"),
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
                  height: 70,
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
                  height: 10,
                ),
                SizedBox(
                  height: 70,
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
                  height: 10,
                ),
                 Container(
                  height: 65,
                  width: 320,
                  decoration: const BoxDecoration(
                    color: Color(0xff0e47a1),
                    borderRadius: BorderRadius.all(Radius.circular(32))
                  ),
                  child: const FloatingActionButton.extended(
                    backgroundColor: Color(0xff0e47a1),
                      onPressed: null, label: Text("SIGNUP")),
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("Already have an Account?"),
                    TextButton(
                      style: TextButton.styleFrom(
                        primary: const Color(0xff6981a7),
                      ),
                      onPressed: () {},
                      child: const Text('Sign In'),
                    )
                  ],
                ),
                const Text("OR"),
                const SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Icon(
                      Icons.facebook_rounded,
                      size: 50,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Icon(
                      FontAwesomeIcons.twitter,
                      size: 50,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Icon(
                      FontAwesomeIcons.googlePlus,
                      size: 50,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                  ],
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
