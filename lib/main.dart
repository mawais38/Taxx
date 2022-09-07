import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


import 'app_router.dart';
import 'blocs/authentication/authentication_bloc.dart';
import 'blocs/simple_bloc_observer.dart';
import 'components/loading_indicator.dart';
import 'data/repositories/authentication_repository.dart';
import 'data/services.dart';
import 'screens/home/home_screen.dart';
import 'screens/login/login_screen.dart';
import 'screens/splash/splash_screen.dart';
import 'themes/default_theme.dart';

void main() {
  AppRouter.setupRoutes();

  // BlocObserver won't work unless all of the init code is inside runZoned's body
  BlocOverrides.runZoned(
    () async {
      WidgetsFlutterBinding.ensureInitialized();
      initServices();
      final authenticationBloc = AuthenticationBloc(
        authenticationRepository: locator.get<AuthenticationRepository>(),
      );
      runApp(
        MultiBlocProvider(
          providers: [
            BlocProvider<AuthenticationBloc>(create: (context) => authenticationBloc),
          ],
          child: const TaxxApp(),
        ),
      );
    },
    blocObserver: SimpleBlocObserver(),
  );
}

class TaxxApp extends StatelessWidget {
  const TaxxApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TaxxApp',
      theme: defaultTheme,
      home: BlocBuilder<AuthenticationBloc, AuthenticationState>(builder: (context, state) {
        if (state is AuthenticationSuccess) {
          return HomeScreen();
        }
        if (state is AuthenticationFailure) {
          return LoginScreen();
        }
        if (state is AuthenticationInProgress) {
          return const LoadingIndicator();
        }
        return SplashScreen();
      }),
    );
  }
}
