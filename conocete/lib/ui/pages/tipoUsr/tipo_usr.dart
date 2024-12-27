import 'package:flutter/material.dart';

import '../widgets/check_box_app.dart';

class TipoUsr extends StatelessWidget {
  const TipoUsr({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.primary,
        title: const Center(
          child: Text("Conócete"),
        ),
        titleTextStyle: Theme.of(context).textTheme.headlineLarge,
      ),
      body: Column(
        children: [
          Text("Con que tipo de usuario te identificas?"),
          Center(
              child: Image(
            height: 200,
            image: AssetImage('assets/eleccion_usr.png'),
          )),
          CheckBoxApp(),
        ],
      ),
    );
  }
}