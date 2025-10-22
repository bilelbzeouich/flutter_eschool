import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.blue,
          brightness: Brightness.light,
        ),
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'FlexStore',
            style: TextStyle(color: Colors.white),
          ),
          centerTitle: true,
          leading: const Icon(Icons.store, color: Colors.white),
          actions: const [
            Icon(Icons.search, color: Colors.white),
            SizedBox(width: 16),
            Icon(Icons.account_circle, size: 28, color: Colors.white),
          ],
          backgroundColor: Colors.blue,
          iconTheme: const IconThemeData(color: Colors.white),
        ),
        body: Center(
          child: Text('Hello, World!'),
        ),
      ),
    
    );
  }
}
