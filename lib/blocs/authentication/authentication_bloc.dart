import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../../data/repositories/authentication_repository.dart';


part 'authentication_event.dart';
part 'authentication_state.dart';

class AuthenticationBloc extends Bloc<AuthenticationEvent, AuthenticationState> {
  late AuthenticationRepository _authenticationRepository;

  AuthenticationBloc({required AuthenticationRepository authenticationRepository}) : super(AuthenticationInitial()) {
    _authenticationRepository = authenticationRepository;
    on<AuthenticationStarted>(_handleAuthStarted);
    on<AuthenticationLoggedIn>(_handleAuthLoggedIn);
    on<AuthenticationLoggedOut>(_handleAuthLoggedOut);
  }

  Future<void> _handleAuthStarted(AuthenticationStarted event, Emitter<AuthenticationState> emit) async {
    final hasToken = await _authenticationRepository.hasToken();

    if (hasToken) {
      emit(AuthenticationSuccess());
    } else {
      emit(AuthenticationFailure());
    }
  }

  Future<void> _handleAuthLoggedIn(AuthenticationLoggedIn event, Emitter<AuthenticationState> emit) async {
    emit(AuthenticationInProgress());
    await _authenticationRepository.persistToken(event.token);
    emit(AuthenticationSuccess());
  }

  Future<void> _handleAuthLoggedOut(AuthenticationLoggedOut event, Emitter<AuthenticationState> emit) async {
    emit(AuthenticationInProgress());
    await _authenticationRepository.deleteToken();
    emit(AuthenticationFailure());
  }
}
