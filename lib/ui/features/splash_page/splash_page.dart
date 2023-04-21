import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import '../../common/colors.dart';
import '../../navigation/routes.gr.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});
  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 3), () {
      context.router.push(const MainRoute());
    });

    return Scaffold(
        body:ColoredBox(
            color: AppColors.white,
            child: Center(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset("graphics/images/splash_img.jpg", width: 320, height: 240),
                      const Padding(
                          padding: EdgeInsets.all(20),
                          child: LinearProgressIndicator(
                            color: Colors.amber,
                            backgroundColor: Colors.amberAccent,
                          ),
                      )
                    ]
                )
            )
        )
    );
  }
}