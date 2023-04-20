import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../domain/features/pokemon/i_pokemon_repository.dart';
import '../../domain/features/pokemon/models/pokemon.dart';

part 'pokemon_event.dart';
part 'pokemon_state.dart';
part 'pokemon_bloc.freezed.dart';

@Injectable()
class PokemonBloc extends Bloc<PokemonEvent, PokemonState> {
  final IPokemonRepository _pokemonRepository;
  PokemonBloc(this._pokemonRepository) : super(const PokemonState.initial());

  Stream<PokemonState> mapEventToState(PokemonEvent event) async* {
    yield* event.map(
      getPokemonByName: (e) async* {
        yield const PokemonState.loading();

        try {
          final pokemon = await _pokemonRepository.getPokemonByName(name: e.name);
          yield PokemonState.loaded(pokemon);
        } catch (e) {
          yield const PokemonState.error('Не удалось получить покемона');
        }
      },
      getRandomPokemonById: (e) async* {
        yield const PokemonState.loading();

        try {
          final pokemon = await _pokemonRepository.getRandomPokemonById(id: e.id);
          yield PokemonState.loaded(pokemon);
        } catch (e) {
          yield const PokemonState.error('Не удалось получить покемона');
        }
    },
      started: (e) async* {
      yield const PokemonState.loading();
    },
    );
  }
}