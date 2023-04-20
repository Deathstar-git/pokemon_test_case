import 'dart:async';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pokemon_test_case/bloc/pokemon_bloc/pokemon_bloc.dart';
import 'package:pokemon_test_case/ui/navigation/routes.gr.dart';
import 'bloc_observer.dart';
import 'injection.dart';

Future<void > main() async{
  WidgetsFlutterBinding.ensureInitialized();
  Bloc.observer = SimpleBlocObserver();
  await configureDependencies();

  return runZonedGuarded(() async {
    runApp(MyApp());
  }, (error, stack) {
    if (kDebugMode) {
      print(stack);
      print(error);
    }
  });
}

class MyApp extends StatelessWidget {

  final _appRouter = getIt<AppRouter>();

  @override
  Widget build(BuildContext context) {
    return BlocProvider<PokemonBloc>(
            create: (_) => getIt<PokemonBloc>()..add(const PokemonEvent.started()),
              child: MaterialApp.router(
                title: 'Pokemon Demo',
                debugShowCheckedModeBanner: false, //Выключаем Debug баннер
                theme: ThemeData(
                  primarySwatch: Colors.blue,
                ),
                routerDelegate: _appRouter.delegate(),
                routeInformationParser: _appRouter.defaultRouteParser(),
              )
          );
  }
}