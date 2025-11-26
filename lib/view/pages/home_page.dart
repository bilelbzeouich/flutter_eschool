import 'package:flutter/material.dart';
import '../widgets/hero_widget.dart';
import '../../const/constants.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        children: [
          HeroWidget(),
          Container(
            width: double.infinity,
            margin: const EdgeInsets.symmetric(vertical: 10.0),
            child: Card(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('mouna banni', style: textStyles.titleStyle),
                    Text(
                      'description of the person',
                      style: textStyles.descriptionStyle,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
