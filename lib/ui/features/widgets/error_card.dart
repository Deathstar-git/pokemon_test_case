import 'package:flutter/material.dart';
import '../../common/colors.dart';

class ErrorCard extends StatelessWidget {
  final String message;
  const ErrorCard({super.key, required this.message});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        height: 600,
        padding: const EdgeInsets.all(20.0),
        decoration: BoxDecoration(
            color: AppColors.darkBlue,
            borderRadius: const BorderRadius.all(
                Radius.circular(10.0)
            ),
            border: Border.all(
                color: AppColors.strokeBorder,
                width: 2
            )
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset("graphics/images/error_img.png", width: 300, height: 300),
            Text(
                message,
                style: const TextStyle(
                  fontSize: 20,
                )
            ),
          ],
        )

    );
  }
}