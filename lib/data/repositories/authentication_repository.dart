import 'dart:async';

import '../provider/authentication_provider.dart';
import '../provider/token_provider.dart';

class AuthenticationRepository {
  final AuthenticationProvider authenticationProvider;
  final TokenProvider tokenProvider;

  AuthenticationRepository({required this.authenticationProvider, required this.tokenProvider});

  Future<String> authenticate({
    required String username,
    required String password,
  }) async {
    return authenticationProvider.authenticate(username: username, password: password);
  }

  Future<void> deleteToken() async {
    return tokenProvider.deleteToken();
  }

  Future<void> persistToken(String token) async {
    return tokenProvider.persistToken(token);
  }

  Future<bool> hasToken() async {
    return tokenProvider.hasToken();
  }
}
