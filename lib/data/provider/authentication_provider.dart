import 'dart:async';

import 'package:dio/dio.dart';

import 'api_client.dart';

class AuthenticationProvider {
  final ApiClient apiClient;

  AuthenticationProvider({required this.apiClient});

  Future<String> authenticate({
    required String username,
    required String password,
  }) async {
    try {
      final response = await apiClient.dio.post('/authenticate',
          data: {'username': username, 'password': password}, options: Options(extra: {'token': false}));
      return response.data['token'];
    } on DioError catch (_) {
      throw Exception('Authentication Failed');
    }
  }
}
