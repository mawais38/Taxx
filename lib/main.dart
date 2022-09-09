import 'package:Taxx/screens/splash/splash_screen.dart';
import 'package:firebase_core_dart/firebase_core_dart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'app_router.dart';
import 'blocs/authentication/authentication_bloc.dart';
import 'blocs/simple_bloc_observer.dart';
import 'data/repositories/authentication_repository.dart';
import 'data/services.dart';
import 'themes/default_theme.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
      options: const FirebaseOptions(
          apiKey: "AIzaSyA8sLZ2MwyAEk4lyNkjLAsyR-AMuopbcVE",
          appId: "1:58567138263:android:a28cf2fa07ff578ea60992",
          messagingSenderId: "58567138263",
          projectId: "taxx-c1734"));
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
            BlocProvider<AuthenticationBloc>(
                create: (context) => authenticationBloc),
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
      home: BlocBuilder<AuthenticationBloc, AuthenticationState>(
          builder: (context, state) {
        if (state is AuthenticationSuccess) {
          return SplashScreen();
        }
        if (state is AuthenticationFailure) {
          return SplashScreen();
        }
        if (state is AuthenticationInProgress) {
          return SplashScreen();
        }
        return SplashScreen();
      }),
    );
  }
}
