import 'package:get_it/get_it.dart';

import 'provider/api_client.dart';
import 'provider/authentication_provider.dart';
import 'provider/token_provider.dart';
import 'repositories/authentication_repository.dart';


final GetIt locator = GetIt.instance;

void initServices() {
  // provider
  locator.registerSingleton<TokenProvider>(TokenProvider());
  locator.registerSingleton<ApiClient>(ApiClient(tokenProvider: locator.get<TokenProvider>()));

  locator.registerSingleton<AuthenticationProvider>(AuthenticationProvider(apiClient: locator.get<ApiClient>()));

  // repositories
  locator.registerSingleton<AuthenticationRepository>(AuthenticationRepository(
      authenticationProvider: locator.get<AuthenticationProvider>(), tokenProvider: locator.get<TokenProvider>()));
}
