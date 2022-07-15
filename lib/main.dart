import 'package:flutter/material.dart';
import 'package:masterclass_homework_2/pages/implicit_animations/activity_1.dart';
import 'package:masterclass_homework_2/pages/implicit_animations/activity_2.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Masterclass Homework 2'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text('Animações Implícitas', style: TextStyle(fontSize: 32)),
              const SizedBox(height: 32),
              ElevatedButton(
                onPressed: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const Activity1(),
                    ),
                  );
                },
                child: const Text(
                    'Exercício 1',
                    style: TextStyle(fontSize: 32)
                  ),
              ),
              const SizedBox(height: 32),
              ElevatedButton(
                onPressed: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const Activity2(),
                    ),
                  );
                },
                child: const Text(
                    'Exercício 2',
                    style: TextStyle(fontSize: 32)
                  ),
              ),
              const SizedBox(height: 100),
              const Text('Animações Controladas', style: TextStyle(fontSize: 32)),
              const SizedBox(height: 32),
              ElevatedButton(
                onPressed: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const Activity1(),
                    ),
                  );
                },
                child: const Text(
                    'Exercício 1',
                    style: TextStyle(fontSize: 32)
                  ),
              ),
              const SizedBox(height: 32),
              ElevatedButton(
                onPressed: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const Activity2(),
                    ),
                  );
                },
                child: const Text(
                    'Exercício 2',
                    style: TextStyle(fontSize: 32)
                  ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
