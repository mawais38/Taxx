import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../../../blocs/authentication/authentication_bloc.dart';
import '../../../data/repositories/authentication_repository.dart';


part 'login_event.dart';

part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final AuthenticationRepository authenticationRepository;
  final AuthenticationBloc authenticationBloc;

  LoginBloc({required this.authenticationRepository, required this.authenticationBloc}) : super(LoginInitial()) {
    on<LoginButtonPressed>(_handleLogin);
    on<LogoutButtonPressed>(_handleLogout);
  }

  Future<void> _handleLogin(LoginButtonPressed event, Emitter<LoginState> emit) async {
    emit(LoginInProgress());

    try {
      final token = await authenticationRepository.authenticate(
        username: event.username,
        password: event.password,
      );

      authenticationBloc.add(AuthenticationLoggedIn(token: token));
      emit(LoginInitial());
    } on Exception catch (error) {
      emit(LoginFailure(error: error.toString()));
    }
  }

  FutureOr<void> _handleLogout(LogoutButtonPressed event, Emitter<LoginState> emit) {}
}
