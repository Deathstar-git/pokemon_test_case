import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';

import '../pokemon/dtos/pokemon_dto.dart';

part 'pokemon_api.g.dart';

@RestApi()
abstract class PokemonApi {
  factory PokemonApi(
      Dio dio,
      {String baseUrl}) = _PokemonApi;

  @GET("/pokemon/{id}")
  Future<PokemonDto> getRandomPokemonById(@Path("id") int id);

  @GET("/pokemon/{name}")
  Future<PokemonDto> getPokemonByName(@Path("name") String name);

  @GET("/pokemon")
  Future<dynamic> getPokemonCount();

}