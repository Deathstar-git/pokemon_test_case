import 'dart:async';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pokemon_test_case/ui/navigation/routes.gr.dart';
import '../../../bloc/pokemon_bloc/pokemon_bloc.dart';
import '../../common/colors.dart';

//Главная страница
class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  MainPageState createState() => MainPageState();
}

class MainPageState extends State {

  final List _colors = [
    AppColors.red,
    AppColors.blue,
  ];

  int _currentColorIndex = 0;
  late Timer _timer;

  @override
  void initState() {
    super.initState();
    _startTimer();
  }

  // Start the timer
  void _startTimer() {
    // Set up a periodic timer that triggers the color change every 3 seconds
    _timer = Timer.periodic(const Duration(seconds: 3), (timer) {
      setState(() {
        _currentColorIndex = (_currentColorIndex + 1) % _colors.length;
      });
    });
  }

  // Cancel the timer when the widget is disposed
  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body:AnimatedContainer(
      duration: const Duration(seconds: 1),
      decoration: BoxDecoration(
      gradient: LinearGradient(
      colors: [
        _colors[_currentColorIndex], // Use the current color
        _colors[(_currentColorIndex + 1) % _colors.length], // Use the next color in the list
      ],
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
      ),
    ),
        child: Center(
            child: SizedBox(
                width: double.infinity,
                height: 800,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children:[
                   Padding(
                     padding: const EdgeInsets.all(20),
                     child:DecoratedBox(
                       decoration: BoxDecoration(
                           color: AppColors.darkBlue,
                           borderRadius: const BorderRadius.all(
                               Radius.circular(10.0)
                           ),
                           border: Border.all(
                               color: AppColors.yellow,
                               width: 2
                           )
                       ),
                       child: InkWell(
                         onTap: () {
                           context.read<PokemonBloc>().add(const PokemonEvent.getRandomPokemonById());
                           context.router.push(const RandomPokemonRoute());
                         },
                         child:SizedBox(
                             height: 300,
                             child:Center(
                                 child: Column(
                                   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                   children: [
                                     Row(
                                       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                       children: [
                                         Stack(
                                           children: [
                                             Text(
                                                 'Выбрать случайного покемона',
                                                 style: TextStyle(
                                                   // color:AppColors.yellow,
                                                     fontSize: 18,
                                                     foreground: Paint()
                                                       ..style = PaintingStyle.stroke
                                                       ..strokeWidth = 3
                                                       ..color = AppColors.darkBlue
                                                 )
                                             ),
                                             Text(
                                                 'Выбрать случайного покемона',
                                                 style: TextStyle(
                                                   // color:AppColors.yellow,
                                                     fontSize: 18,
                                                     foreground: Paint()
                                                       ..style = PaintingStyle.fill
                                                       ..strokeWidth = 1
                                                       ..color = AppColors.yellow
                                                 )
                                             ),
                                           ],
                                         ),
                                         const Icon(Icons.arrow_forward_ios, color: AppColors.yellow)
                                       ],
                                     ),
                                     Image.asset("graphics/images/random_pokemon_img.jpg", width: 320, height: 240)
                                   ],
                                 )
                             )
                         ),
                       ),
                     ),
                   ),
                    Padding(
                      padding: const EdgeInsets.all(20),
                      child:DecoratedBox(
                        decoration:  BoxDecoration(
                          color: AppColors.darkBlue,
                          borderRadius: const BorderRadius.all(
                              Radius.circular(10.0)
                          ),
                          border: Border.all(
                              color: AppColors.yellow,
                              width: 2
                          )
                      ),
                      child:InkWell(
                      onTap: () {
                        context.read<PokemonBloc>().add(const PokemonEvent.waiting());
                        context.router.push(const SearchPokemonRoute());
                      },
                      child:SizedBox(
                          height: 300,
                          child:Center(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Stack(
                                        children: [
                                          Text(
                                              'Найти покемона по имени',
                                              style: TextStyle(
                                                // color:AppColors.yellow,
                                                  fontSize: 18,
                                                  foreground: Paint()
                                                    ..style = PaintingStyle.stroke
                                                    ..strokeWidth = 3
                                                    ..color = AppColors.darkBlue
                                              )
                                          ),
                                          Text(
                                              'Найти покемона по имени',
                                              style: TextStyle(
                                                // color:AppColors.yellow,
                                                  fontSize: 18,
                                                  foreground: Paint()
                                                    ..style = PaintingStyle.fill
                                                    ..strokeWidth = 1
                                                    ..color = AppColors.yellow
                                              )
                                          ),
                                        ],
                                      ),
                                      const Icon(Icons.search, color: AppColors.yellow)
                                    ],
                                  ),
                                  Image.asset("graphics/images/get_pokemon_img.png", width: 320, height: 240),

                                ],
                              )
                          )
                        ),
                      ),
                    ),
                  ),
                  ],
                )
            )
        )
      )
    );
  }
}
