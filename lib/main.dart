import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.deepPurple,
          brightness: Brightness.dark,
        ),
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});


  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
        leading: Icon(Icons.add_circle,color: Colors.amber,),

      ),
      body: Stack(
        children: [
          // Make the background image as the bottom layer
          Positioned.fill(
            child: Image.asset(
              'assets/images/bg.jpeg',
              fit: BoxFit.cover,
              
            ),
          ),
          // The content widgets on top of background image
          Container(
            color: Colors.white,
            child: ListTile(
              title: Text('Hello World', style: TextStyle(color: Colors.green , fontSize: 24, fontWeight: FontWeight.bold)),
              subtitle: Text('Hello World', style: TextStyle(color: Colors.green , fontSize: 16, fontWeight: FontWeight.normal)),
              leading: Icon(Icons.add_circle, color: Colors.amber),
              trailing: Icon(Icons.add_box, color: Colors.amber),
              onTap: () {
                print('Hello World');
              },
            ),
          ),
          SizedBox(
            height: 200,
            child: Center(
              child: Text('Hello World',
                style: TextStyle(color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold),),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), 
    );
  }
}
