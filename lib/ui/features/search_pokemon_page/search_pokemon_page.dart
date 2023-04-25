import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pokemon_test_case/ui/features/widgets/animated_background.dart';
import 'package:pokemon_test_case/ui/features/widgets/pokemon_card.dart';
import '../../../bloc/pokemon_bloc/pokemon_bloc.dart';
import '../../common/colors.dart';
import '../../navigation/routes.gr.dart';
import '../widgets/error_card.dart';

class SearchPokemonPage extends StatefulWidget {
  const SearchPokemonPage({super.key});

  @override
  State<SearchPokemonPage> createState() => _SearchPokemonPageState();

}
class _SearchPokemonPageState extends State<SearchPokemonPage> {
  final TextEditingController _controller = TextEditingController();

  @override
  void dispose() {
    FocusManager.instance.primaryFocus?.unfocus();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PokemonBloc, PokemonState>(
        builder: (context, state) {
          return Scaffold(
              extendBodyBehindAppBar: true,
              resizeToAvoidBottomInset: false, //избегание overflow при появлении клавиатуры
              appBar: AppBar(
                leading: IconButton(
                  onPressed: () {
                    FocusManager.instance.primaryFocus?.unfocus();
                    context.router.replace(const MainRoute());
                  },
                  icon: const Icon(Icons.arrow_back),

                ),
                backgroundColor: Colors.transparent,
                elevation: 0,
                title: Container(
                width: double.infinity,
                  height: 40,
                  decoration: BoxDecoration(
                      color: Colors.white, borderRadius: BorderRadius.circular(5)),
                  child: Center(
                    child: TextField(
                      controller: _controller,
                      autocorrect: false,
                      decoration: InputDecoration(
                          prefixIcon: IconButton(
                            icon: const Icon(Icons.clear),
                            onPressed: () {
                              _controller.clear();
                            },
                          ),
                          suffixIcon: IconButton(
                            icon: const Icon(Icons.search),
                            onPressed: () {
                              var value = _controller.text.toLowerCase();
                              context.read<PokemonBloc>().add(PokemonEvent.getPokemonByName(value));
                              FocusManager.instance.primaryFocus?.unfocus();
                            },
                          ),
                          hintText: 'Найти покемона...',
                          border: InputBorder.none),
                    ),
                  ),
                )
              ),
              body: state.when(
                  initial: () {
                    return const AnimatedBackground(child: Center());
                  },
                  loading: () {
                    // return const AnimatedBackground(child: Center(child:Text('loading')));
                    return  Center(
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Text('Бежим на поиски покемона..'),
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
                        child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child:Center(
                                child:ErrorCard(message: message)
                            )
                        )
                    );
                  }
              )
          );
        }
    );
  }
}

