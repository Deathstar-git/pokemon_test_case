// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i5;
import 'package:flutter/material.dart' as _i6;

import '../features/main_page/main_page.dart' as _i1;
import '../features/random_pokemon_page/random_pokemon_page.dart' as _i2;
import '../features/search_pokemon_page/search_pokemon_page.dart' as _i3;
import '../features/splash_page/splash_page.dart' as _i4;

class AppRouter extends _i5.RootStackRouter {
  AppRouter([_i6.GlobalKey<_i6.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i5.PageFactory> pagesMap = {
    MainRoute.name: (routeData) {
      return _i5.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i1.MainPage(),
      );
    },
    RandomPokemonRoute.name: (routeData) {
      return _i5.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i2.RandomPokemonPage(),
      );
    },
    SearchPokemonRoute.name: (routeData) {
      return _i5.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i3.SearchPokemonPage(),
      );
    },
    SplashRoute.name: (routeData) {
      return _i5.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i4.SplashPage(),
      );
    },
  };

  @override
  List<_i5.RouteConfig> get routes => [
        _i5.RouteConfig(
          MainRoute.name,
          path: '/main-page',
        ),
        _i5.RouteConfig(
          RandomPokemonRoute.name,
          path: '/random-pokemon-page',
        ),
        _i5.RouteConfig(
          SearchPokemonRoute.name,
          path: '/search-pokemon-page',
        ),
        _i5.RouteConfig(
          SplashRoute.name,
          path: '/',
        ),
      ];
}

/// generated route for
/// [_i1.MainPage]
class MainRoute extends _i5.PageRouteInfo<void> {
  const MainRoute()
      : super(
          MainRoute.name,
          path: '/main-page',
        );

  static const String name = 'MainRoute';
}

/// generated route for
/// [_i2.RandomPokemonPage]
class RandomPokemonRoute extends _i5.PageRouteInfo<void> {
  const RandomPokemonRoute()
      : super(
          RandomPokemonRoute.name,
          path: '/random-pokemon-page',
        );

  static const String name = 'RandomPokemonRoute';
}

/// generated route for
/// [_i3.SearchPokemonPage]
class SearchPokemonRoute extends _i5.PageRouteInfo<void> {
  const SearchPokemonRoute()
      : super(
          SearchPokemonRoute.name,
          path: '/search-pokemon-page',
        );

  static const String name = 'SearchPokemonRoute';
}

/// generated route for
/// [_i4.SplashPage]
class SplashRoute extends _i5.PageRouteInfo<void> {
  const SplashRoute()
      : super(
          SplashRoute.name,
          path: '/',
        );

  static const String name = 'SplashRoute';
}
