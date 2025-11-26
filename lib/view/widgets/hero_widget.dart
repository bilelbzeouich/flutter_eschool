import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class HeroWidget extends StatelessWidget {
  const HeroWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: 'hero-widget',
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10.0),
        child: Lottie.asset(
          'assets/lotties/loading.json',
          fit: BoxFit.cover,
          repeat: true,
          animate: true,
        ),
      ),
    );
  }
}
