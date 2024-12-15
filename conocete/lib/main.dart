import 'package:conocete/ui/pages/Onborading/Onboarding.dart.';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    var rosaFuerte = const Color.fromARGB(255, 255, 167, 221) ;
    var rosaClaro = const Color.fromARGB(255, 255, 230, 246);
    var grisOscuro = const Color.fromARGB(255, 46, 46, 46);
    var rosaError = const Color.fromARGB(255, 255, 150, 210);

    // ignore: unused_local_variable
    var altura = MediaQuery.of(context).size.height;
    // ignore: unused_local_variable
    var anchura = MediaQuery.of(context).size.width;

    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme(brightness:  Brightness.light, primary: rosaFuerte, onPrimary: grisOscuro, secondary: rosaClaro, onSecondary: grisOscuro, error: rosaError, onError: grisOscuro, surface: const Color(0xffffffff), onSurface: grisOscuro),
        useMaterial3: true,
        textTheme: GoogleFonts.chauPhilomeneOneTextTheme(),

      ),
      home: const Onboarding(),
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
        body: const Text(
            'Texto') // This trailing comma makes auto-formatting nicer for build methods.
        );
  }
}
