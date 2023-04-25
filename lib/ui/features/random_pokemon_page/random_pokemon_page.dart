import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pokemon_test_case/ui/features/widgets/animated_background.dart';
import 'package:pokemon_test_case/ui/features/widgets/pokemon_card.dart';
import '../../../bloc/pokemon_bloc/pokemon_bloc.dart';
import '../../common/colors.dart';


class RandomPokemonPage extends StatelessWidget {
  const RandomPokemonPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PokemonBloc, PokemonState>(
        builder: (context, state) {
          return Scaffold(
              extendBodyBehindAppBar: true,
              appBar: AppBar(
                backgroundColor: Colors.transparent,
                elevation: 0,
                actions: [
                    InkWell(
                      onTap: () {
                        context.read<PokemonBloc>().add(const PokemonEvent.getRandomPokemonById());
                      },
                      child: Row(
                          children: const [
                        Text('Ещё покемон'),
                        Icon(Icons.restart_alt_rounded)
                      ])
                    )
                ],
              ),
              body: state.when(
                  initial: () {
                    return const AnimatedBackground(child: Center(child:Text('initialization')));
                  },
                  loading: () {
                    // return const AnimatedBackground(child: Center(child:Text('loading')));
                    return  Center(
                        child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Text('Ищем покемона..'),
                    Padding(
                    padding: EdgeInsets.all(20),
                    child: LinearProgressIndicator(
                    color: AppColors.yellow,
                    backgroundColor: AppColors.lightYellow,
                                ),
                              )
                        ])
                    );
                  },
                  loaded: (pokemon) {
                    return AnimatedBackground(
                        child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child:Center(
                            child:PokemonCard(pokemon:pokemon)
                          )
                        )
                    );
                  },
                 error: (message) {
                   return AnimatedBackground(
                       child: Center(
                           child:Text(message)
                       )
                   );
                 }
              )
          );
        }
    );
  }
}

