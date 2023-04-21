import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../bloc/pokemon_bloc/pokemon_bloc.dart';
import '../../common/colors.dart';


class RandomPokemonPage extends StatelessWidget {
  const RandomPokemonPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PokemonBloc, PokemonState>(
        builder: (context, state) {
          return Scaffold(
              body: state.when(
                  initial: () {
                    return const Text('initialization');
                  },
                  loading: () {
                    return const Text('loading');
                  },
                  loaded: (pokemon) {
                    return Center(child: Text(pokemon.name));
                  },
                 error: (String message) {
                   return Text(message);
                 }
              )
          );
        }
    );
  }
}

