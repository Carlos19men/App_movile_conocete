import 'package:flutter/material.dart';

class Newdocumento extends StatelessWidget {
  const Newdocumento({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Conócete')),
        backgroundColor: Color.fromARGB(255, 255, 167, 221),
      ),
      body: Center(
        child: Text('nuevo documento'),
      ),
    );
  }
}
