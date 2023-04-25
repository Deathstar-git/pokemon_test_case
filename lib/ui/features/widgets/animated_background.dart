import 'dart:async';
import 'package:flutter/material.dart';
import '../../common/colors.dart';

class AnimatedBackground extends StatefulWidget {
  final Widget child;
  const AnimatedBackground({super.key, required this.child});

  @override
  State<AnimatedBackground> createState() => _AnimatedBackgroundState();

}

class _AnimatedBackgroundState extends State<AnimatedBackground> {
  final List _colors = [
    AppColors.red,
    AppColors.blue,
  ];

  int _currentColorIndex = 0;
  late Timer _timer;
  late  Widget _child;
  @override
  void initState() {
    super.initState();
    _child = widget.child;
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
    return AnimatedContainer(
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
      child: _child
    );
  }
}