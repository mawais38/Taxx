import 'package:dio/dio.dart';

import 'token_provider.dart';


class ApiClient {
  final TokenProvider tokenProvider;
  late Dio dio;

  final String _baseUrl = 'https://baseurl.com';

  ApiClient({required this.tokenProvider}) {
    dio = Dio();
    dio.options.baseUrl = _baseUrl;
    dio.options.connectTimeout = 10000;
    dio.options.receiveTimeout = 6000;
    dio.options.responseType = ResponseType.json;
    dio.interceptors
      ..add(TokenInterceptor(dio: dio, tokenProvider: tokenProvider))
      ..add(LogInterceptor(responseBody: false));
  }
}

class TokenInterceptor extends Interceptor {
  final Dio dio;
  final TokenProvider tokenProvider;

  TokenInterceptor({required this.dio, required this.tokenProvider});
}
