import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/foundation.dart';
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
                  children:[
                   Padding(
                     padding: const EdgeInsets.all(20),
                     child:DecoratedBox(
                       decoration: BoxDecoration(
                         borderRadius: const BorderRadius.all(Radius.circular(20)),
                         boxShadow: [
                           BoxShadow(
                             color: Colors.grey.withOpacity(0.3),
                             spreadRadius: 5,
                             blurRadius: 7,
                             offset: const Offset(0, 3), // changes position of shadow
                           ),
                         ],
                         ),
                       child: InkWell(
                         onTap: () {
                           context.read<PokemonBloc>().add(const PokemonEvent.getRandomPokemonById());
                           context.router.push(const RandomPokemonRoute());
                           //TODO:Сделать экран показа случайного покемона
                         },
                         child:SizedBox(
                             height: 350,
                             child:Center(
                                 child: Column(
                                   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                   children: [
                                     Image.asset("graphics/images/random_pokemon_img.jpg", width: 320, height: 240),
                                     Stack(
                                       children: [
                                         Text(
                                             'Выбрать случайного покемона',
                                             style: TextStyle(
                                               // color:AppColors.yellow,
                                                 fontSize: 20,
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
                                                 fontSize: 20,
                                                 foreground: Paint()
                                                   ..style = PaintingStyle.fill
                                                   ..strokeWidth = 1
                                                   ..color = AppColors.yellow
                                             )
                                         ),
                                       ],
                                     )
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
                        decoration: BoxDecoration(
                            borderRadius: const BorderRadius.all(Radius.circular(20)),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.3),
                              spreadRadius: 5,
                              blurRadius: 7,
                              offset: const Offset(0, 3), // changes position of shadow
                            ),
                          ],
                        ),
                      child:InkWell(
                      onTap: () {
                        if (kDebugMode) {
                          print('pokemon by name');
                        }
                        //TODO:Сделать экран поиска покемона по имени
                      },
                      child:SizedBox(
                          height: 350,
                          child:Center(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Image.asset("graphics/images/get_pokemon_img.png", width: 320, height: 240),
                                  Stack(
                                    children: [
                                      Text(
                                          'Найти покемона по имени',
                                          style: TextStyle(
                                            // color:AppColors.yellow,
                                              fontSize: 20,
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
                                              fontSize: 20,
                                              foreground: Paint()
                                                ..style = PaintingStyle.fill
                                                ..strokeWidth = 1
                                                ..color = AppColors.yellow
                                          )
                                      ),
                                    ],
                                  )
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
