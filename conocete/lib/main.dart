import 'package:conocete/ui/pages/Onboarding/onboarding.dart.';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/date_symbol_data_local.dart';


void main() {
  initializeDateFormatting().then((_) => runApp(const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    var rosaFuerte = const Color.fromARGB(255, 255, 167, 221);
    var rosaClaro = const Color.fromARGB(255, 255, 202, 233);
    var grisOscuro = const Color.fromARGB(255, 46, 46, 46);
    var rosaError = const Color.fromARGB(255, 174, 25, 70);

    // ignore: unused_local_variable
    final altura = MediaQuery.of(context).size.height;
    // ignore: unused_local_variable
    final anchura = MediaQuery.of(context).size.width;

    return MaterialApp(
      title: 'App Conócete',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textTheme: GoogleFonts.chauPhilomeneOneTextTheme()
        ,
        colorScheme: ColorScheme(
            brightness: Brightness.light,
            primary: rosaFuerte,
            onPrimary: grisOscuro,
            secondary: rosaClaro,
            onSecondary: grisOscuro,
            error: rosaError,
            onError: grisOscuro,
            surface: const Color(0xffffffff),
            onSurface: grisOscuro),
            shadowColor: grisOscuro,

        useMaterial3: true,
        buttonTheme: ButtonThemeData(
          buttonColor: Colors.black,
        ),
      ),
      home: const Onboarding(),
    );
  }
}
