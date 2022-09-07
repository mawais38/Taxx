import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'bloc/login_bloc.dart';

class LoginForm extends StatefulWidget {
  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();
  bool _showPassword = false;

  @override
  Widget build(BuildContext context) {
    _onLoginButtonPressed() {
      BlocProvider.of<LoginBloc>(context).add(
        LoginButtonPressed(
          username: _usernameController.text,
          password: _passwordController.text,
        ),
      );
    }

    return BlocListener<LoginBloc, LoginState>(
      listener: (context, state) {
        if (state is LoginFailure) {
          Scaffold.of(context).showSnackBar(
            SnackBar(
              content: Text('Wrong username or password. Please try again.'),
              backgroundColor: Colors.red,
            ),
          );
        }
      },
      child: BlocBuilder<LoginBloc, LoginState>(
        builder: (context, state) {
          return Form(
              child: Column(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 10),
                    child: TextFormField(
                      decoration: InputDecoration(
                        labelText: 'username',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                      ),
                      controller: _usernameController,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 10),
                    child: _showPassword == true
                        ? TextFormField(
                            obscureText: !_showPassword,
                            decoration: InputDecoration(
                              labelText: 'password',
                              suffixIcon: IconButton(
                                icon: Icon(Icons.visibility_off),
                                onPressed: () {
                                  setState(
                                      () => _showPassword = !_showPassword);
                                },
                              ),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5.0),
                              ),
                            ),
                            controller: _passwordController,
                          )
                        : TextFormField(
                            obscureText: !_showPassword,
                            decoration: InputDecoration(
                              labelText: 'password',
                              suffixIcon: IconButton(
                                icon: Icon(Icons.visibility),
                                onPressed: () {
                                  setState(
                                      () => _showPassword = !_showPassword);
                                },
                              ),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5.0),
                              ),
                            ),
                            controller: _passwordController,
                          ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.all(15),
                child: RaisedButton(
                  key: Key('loginButton'),
                  onPressed:
                      state is! LoginInProgress ? _onLoginButtonPressed : null,
                  child: Text(
                    'LOGIN',
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
            ],
          ));
        },
      ),
    );
  }
}
