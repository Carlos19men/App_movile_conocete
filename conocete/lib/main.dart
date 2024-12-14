import 'package:conocete/ui/pages/home/Home.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    var rosaFuerte = ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 255, 167, 221)) ;
    var rosaClaro = ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 255, 230, 246));
    var grisOscuro = ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 46, 46, 46));



    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: rosaFuerte,
        useMaterial3: true,
      ),
      home: const Home(),
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text(widget.title),
        ),
        body: Text(
            'Texto') // This trailing comma makes auto-formatting nicer for build methods.
        );
  }
}
