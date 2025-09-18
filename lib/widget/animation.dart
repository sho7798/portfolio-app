import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

class AnimationWidget extends StatelessWidget {
  const AnimationWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      "I'm Su Hlaing Oo , Mobile App Developer from Yangon, Myanmar.",
      style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
    ).animate().fadeIn(duration: 800.ms).slideY(begin: 0.5);
  }
}
