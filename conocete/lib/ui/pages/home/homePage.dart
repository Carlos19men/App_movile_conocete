import 'package:flutter/material.dart';
import 'widgets/recordatorios.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

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
          body: Scrollbar(child:
          Container(
            margin: EdgeInsets.all(10.0),
            decoration: BoxDecoration(color: Colors.white),
            child: Column(children: <Widget>[
              Recordatorio(),
            ]
            ),
          ),
          )

    );
  }
}
