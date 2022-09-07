import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../blocs/authentication/authentication_bloc.dart';
import '../../data/repositories/authentication_repository.dart';
import '../../data/services.dart';
import 'bloc/login_bloc.dart';
import 'login_form.dart';

class LoginScreen extends StatelessWidget {
  final AuthenticationRepository authenticationRepository =
      locator.get<AuthenticationRepository>();

  LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Login')),
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: BlocProvider<LoginBloc>(
          create: (context) {
            return LoginBloc(
              authenticationBloc: BlocProvider.of<AuthenticationBloc>(context),
              authenticationRepository: authenticationRepository,
            );
          },
          child: LoginForm(),
        ),
      ),
    );
  }
}
