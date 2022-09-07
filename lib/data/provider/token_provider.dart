import 'dart:async';

import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class TokenProvider {
  final FlutterSecureStorage _storage = FlutterSecureStorage();
  final String _tokenKey = 'loudrToken';

  String? _token;

  String get token => _token!;

  Future<void> deleteToken() async {
    /// delete from keystore/keychain
    await _storage.delete(key: _tokenKey);
    _token = null;
    return;
  }

  Future<void> persistToken(String token) async {
    /// write to keystore/keychain
    await _storage.write(key: _tokenKey, value: token);
    _token = token;
    return;
  }

  Future<bool> hasToken() async {
    /// read from keystore/keychain
    _token = await _storage.read(key: _tokenKey);
    return _token != null;
  }
}
