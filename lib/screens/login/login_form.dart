import 'package:Taxx/screens/signup/signup_form.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../widgets/custom_paint.dart';
import 'bloc/login_bloc.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({Key? key}) : super(key: key);

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

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
          return Stack(
            children: [
              Positioned(
                child: Padding(
                  padding: const EdgeInsets.all(15),
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        const SizedBox(height: 30),
                        const Text(
                          "LOGIN",
                          textScaleFactor: 2.0,
                          style: TextStyle(
                              fontSize: 14,
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
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 10, vertical: 10),
                          child: TextFormField(
                            decoration: InputDecoration(
                              prefixIcon: const Icon(
                                Icons.person,
                                color: Color(0xff325aa3),
                              ),
                              filled: true,
                              fillColor: const Color(0xfff0e6ff),
                              hintText: 'Email',
                              enabledBorder: OutlineInputBorder(
                                  borderSide:
                                      const BorderSide(color: Colors.white),
                                  borderRadius: BorderRadius.circular(30)),
                              focusedBorder: OutlineInputBorder(
                                  borderSide:
                                      const BorderSide(color: Colors.white),
                                  borderRadius: BorderRadius.circular(30)),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 10, vertical: 10),
                          child: TextFormField(
                            obscureText: true,
                            decoration: InputDecoration(
                              suffixIcon: const Icon(Icons.remove_red_eye),
                              prefixIcon: const Icon(
                                Icons.lock,
                                color: Color(0xff325aa3),
                              ),
                              filled: true,
                              fillColor: const Color(0xfff0e6ff),
                              hintText: 'Password',
                              enabledBorder: OutlineInputBorder(
                                  borderSide:
                                      const BorderSide(color: Colors.white),
                                  borderRadius: BorderRadius.circular(30)),
                              focusedBorder: OutlineInputBorder(
                                  borderSide:
                                      const BorderSide(color: Colors.white),
                                  borderRadius: BorderRadius.circular(30)),
                            ),
                            controller: _passwordController,
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Container(
                          height: 50,
                          width: 320,
                          decoration: BoxDecoration(
                            color: const Color(0xff0e47a1),
                            borderRadius: BorderRadius.circular(35),
                          ),
                          child: const FloatingActionButton.extended(
                              backgroundColor: Color(0xff0e47a1),
                              onPressed: null,
                              label: Text("LOGIN")),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                              "Don't have an Account?",
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.w400),
                            ),
                            TextButton(
                              style: TextButton.styleFrom(
                                primary: const Color(0xff0e47a1),
                              ),
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => const SignupForm()),
                                );
                              },
                              child: const Text(
                                'Sign Up',
                                style: TextStyle(
                                    fontSize: 14, fontWeight: FontWeight.w600),
                              ),
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
                                  border: Border.all(
                                      color: const Color(0xffF8F2FE),
                                      width: 1)),
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
                                  border: Border.all(
                                      color: const Color(0xffF8F2FE),
                                      width: 1)),
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
                                  border: Border.all(
                                      color: const Color(0XFFF8F2FE),
                                      width: 1)),
                              child: const Icon(
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
                ),
              ),
              Positioned(
                bottom: 750,
                right: 410,
                // bottom: 800,
                // right: 570,
                child: CustomPaint(
                  painter: DrawCircle(color: const Color(0xffF4C0CC), value1: 25,value2: 80,value3: 100),
                ),
              ),
              Positioned(
                top: 535,
                right: 420,
                child: CustomPaint(
                  painter: DrawCircle(color: const Color(0XFFF8F2FE),value1: 20,value2: 80,value3: 80),
                ),
              ),
              Container(),
            ],
          );
        },
      ),
    );
  }
}
