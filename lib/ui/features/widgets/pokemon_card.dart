import 'package:flutter/material.dart';
import '../../../domain/features/pokemon/models/pokemon.dart';
import '../../common/colors.dart';

class PokemonCard extends StatelessWidget {
  final Pokemon pokemon;
  const PokemonCard({super.key, required this.pokemon});

  @override
  Widget build(BuildContext context) {
      return Container(
        width: double.infinity,
        height: 600,
        padding: const EdgeInsets.all(20.0),
        decoration: BoxDecoration(
            color: AppColors.darkBlue,
            borderRadius: const BorderRadius.all(
                Radius.circular(2.0)
            ),
            border: Border.all(
                color: AppColors.strokeBorder,
                width: 2
            )
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              pokemon.name,
              style: const TextStyle(
                fontSize: 20,
              )
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
              Column(children: [
                const Text('Рост'),
                Text('${pokemon.height} dm'),
              ],),
              Column(children: [
                const Text('Вес'),
                Text('${pokemon.weight} hg'),
              ],)
            ],),
            Image.network(
              'https://assets.pokemon.com/assets/cms2/img/pokedex/full/${pokemon.id}.png',
              width: 300,
              height:300,
              errorBuilder: (BuildContext context, Object exception, StackTrace? stackTrace) {
                return  Image.network(
                    'https://i.ytimg.com/vi/1KpB1umoRzM/maxresdefault.jpg',
                    width: 300,
                    height:300
                );
              },
            ),

          ],
        )

      );
  }
}