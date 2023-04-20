import 'package:flutter/material.dart';
import '../../common/colors.dart';

//Главная страница
class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.black_5,
      appBar: AppBar(
        backgroundColor: AppColors.black_1,
        centerTitle: true,
        title: const Text('Покемоны')
      ),

      body:const Center(),
      // create: (_) => getIt<MarginalityBloc>(),
    );
  }
}