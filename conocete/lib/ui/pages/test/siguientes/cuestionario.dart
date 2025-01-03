
import 'package:flutter/material.dart';

class Cuestionario extends StatelessWidget {
  const Cuestionario({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.primary,
        title: const Center(
          child: Text("Conócete"),
        ),
        titleTextStyle: Theme.of(context).textTheme.headlineLarge,
      ),
      body:SizedBox(height: 5,)
    );


  }
  }