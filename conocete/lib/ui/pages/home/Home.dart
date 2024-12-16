import 'package:conocete/ui/pages/LogReg/LogReg.dart';
import 'package:conocete/ui/pages/widgets/BotonApp.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.primary,
      ),
      body: BotonNav(etiqueta: "Home", sig: LogReg()),
    );
  }
}
