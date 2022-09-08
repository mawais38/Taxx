import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../widgets/custom_paint.dart';
import '../login/login_screen.dart';

class SignupForm extends StatefulWidget {
  const SignupForm({Key? key}) : super(key: key);

  @override
  State<SignupForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<SignupForm> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _phoneController = TextEditingController();

  @override
  Widget build(BuildContext context) {

    return Material(
      child: Stack(
            children: [
              Positioned(
                child: Padding(
                  padding: const EdgeInsets.all(15),
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        const SizedBox(height: 30),
                        const Text(
                          "SIGNUP",
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
                            controller: _emailController,
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
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 10, vertical: 10),
                          child: TextFormField(
                            decoration: InputDecoration(
                              prefixIcon: const Icon(
                                Icons.phone_android,
                                color: Color(0xff325aa3),
                              ),
                              filled: true,
                              fillColor: const Color(0xfff0e6ff),
                              hintText: 'Phone',
                              enabledBorder: OutlineInputBorder(
                                  borderSide:
                                  const BorderSide(color: Colors.white),
                                  borderRadius: BorderRadius.circular(30)),
                              focusedBorder: OutlineInputBorder(
                                  borderSide:
                                  const BorderSide(color: Colors.white),
                                  borderRadius: BorderRadius.circular(30)),
                            ),
                            controller: _phoneController,
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
                              label: Text("SIGNUP")),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                              "Already have an Account?",
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
                                  MaterialPageRoute(builder: (context) => LoginScreen()),
                                );
                              },
                              child: const Text(
                                'Sign In',
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
                  painter: DrawCircle(color: const Color(0xffF4C0CC), value1: 20,value2: 80,value3: 100),
                ),
              ),
              Positioned(
                top: 570,
                right: 420,
                child: CustomPaint(
                  painter: DrawCircle(color: const Color(0XFFF8F2FE),value1: 20,value2: 80,value3: 80),
                ),
              ),
            ],
          ),
    );
  }
}
