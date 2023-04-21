import 'package:auto_route/auto_route.dart';
import 'package:pokemon_test_case/ui/features/splash_page/splash_page.dart';

import '../features/main_page/main_page.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',

  routes: <AutoRoute>[
    AutoRoute(page: MainPage),
    AutoRoute(page: MainPage),
    AutoRoute(page: SplashPage, initial: true),
  ],
)
class $AppRouter {}