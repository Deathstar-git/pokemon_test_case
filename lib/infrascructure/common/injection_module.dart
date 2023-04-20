import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:pokemon_test_case/infrascructure/features/services/pokemon_api.dart';

import '../../ui/navigation/routes.gr.dart';

@module
abstract class ServiceModule {

  final dio = Dio(BaseOptions(baseUrl: 'https://pokeapi.co/api/v2'));
  @lazySingleton
  PokemonApi get api_client => PokemonApi(dio);

  @lazySingleton
  AppRouter get router => AppRouter();

}