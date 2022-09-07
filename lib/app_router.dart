import 'package:fluro/fluro.dart';

import 'screens/home/home_screen.dart';

class AppRouter {
  AppRouter._();

  static final FluroRouter router = FluroRouter();

  // Route path
  static String home = 'home';

  // Handler
  static final Handler _homeScreenHandler = Handler(handlerFunc: (context, params) => const HomeScreen());


  static void setupRoutes() {
    router.define(home, handler: _homeScreenHandler, transitionType: TransitionType.inFromLeft);
  }
}
