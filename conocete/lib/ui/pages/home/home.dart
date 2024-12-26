
import 'package:flutter/material.dart';
import '../LogReg/log_reg.dart';
import '../widgets/boton_app.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.primary,
        title: const Center(
          child: Text("Conócete"),
        ),
      ),
      body: BotonNav(etiqueta: "Home", sig: LogReg()),
    );
  }
}
