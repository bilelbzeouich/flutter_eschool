import 'package:flutter/material.dart';
import 'view/widgets/widget_tree.dart';
import 'view/data/notifiers.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
    brightnessNotifier.addListener(_onBrightnessChanged);
  }

  @override
  void dispose() {
    brightnessNotifier.removeListener(_onBrightnessChanged);
    super.dispose();
  }

  void _onBrightnessChanged() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.teal,
          brightness: brightnessNotifier.value,
        ), // ColorScheme.fromSeed
      ), // ThemeData
      home: WidgetTree(),
    ); // MaterialApp
  }
}
