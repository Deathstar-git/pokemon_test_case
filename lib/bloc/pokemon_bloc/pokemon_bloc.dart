import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../domain/features/pokemon/i_pokemon_repository.dart';
import '../../domain/features/pokemon/models/pokemon.dart';
import '../../infrascructure/features/services/pokemon_randomizer.dart';

part 'pokemon_event.dart';
part 'pokemon_state.dart';
part 'pokemon_bloc.freezed.dart';

@Injectable()
class PokemonBloc extends Bloc<PokemonEvent, PokemonState> {
  final IPokemonRepository _pokemonRepository;
  final PokemonRandomizer _pokemonRandomizer;

  Future<void> onGetRandomPokemonById(
      GetRandomPokemonById event,
      Emitter<PokemonState> emit,
      ) async {
    emit(const _Loading());
    try {
      final id = await _pokemonRandomizer.getRandomId();
      final pokemon = await _pokemonRepository.getRandomPokemonById(id: id);
      emit(_Loaded(pokemon));
    } catch (e) {
      emit(_Error(e.toString()));
    }
  }

  Future<void> onGetPokemonByName(
      GetPokemonByName event,
      Emitter<PokemonState> emit,
      ) async {
    emit(const _Loading());
    try {
      final id = await _pokemonRandomizer.getRandomId();
      final pokemon = await _pokemonRepository.getRandomPokemonById(id: id);
      emit(_Loaded(pokemon));
    } catch (e) {
      emit(const _Error('Не удалось получить покемона'));
    }
  }

  PokemonBloc(this._pokemonRepository, this._pokemonRandomizer)
      : super(const PokemonState.initial()) {
    on<PokemonEvent>((event, emit) async {
      await event.map(
        getRandomPokemonById:
          (getRandomPokemonById) => onGetRandomPokemonById(getRandomPokemonById, emit),
        getPokemonByName:
            (getRandomPokemonById) => onGetPokemonByName(getRandomPokemonById, emit)
      );
    });
  }
}