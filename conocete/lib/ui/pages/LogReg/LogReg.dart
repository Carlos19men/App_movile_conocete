import 'package:flutter/material.dart';

import '../home/Home.dart';

class LogReg extends StatelessWidget {
  const LogReg({super.key});

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
      body: Column(children: [
        const Center(
          child: Image(image: AssetImage('assets/logo_app.png'), height: 150),
        ),
        Stack(children: [
          const SizedBox(
            height: 410,
            child: Image(
              image: AssetImage('assets/chica_onboard.png'),
            ),
          ),
          SizedBox(
            child: TextButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => const Home()),
                  );
                },
                child: const Text('boton')),
          ),
        ]),
      ]),
      backgroundColor: Theme.of(context).primaryColor,
    );
  }
}
