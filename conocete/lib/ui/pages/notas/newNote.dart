import 'package:flutter/material.dart';
import '../widgest/bodyMargin.dart';

class Newnote extends StatelessWidget {
  const Newnote({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Center(child: Text('Conócete')),
          backgroundColor: Color.fromARGB(255, 255, 167, 221),
        ),
        body: Bodymargin(
          ListView(
            children: [
              TextField(
                decoration: InputDecoration(
                    label: Text('Titulo de la nota'),
                    labelStyle: TextStyle(fontSize: 20),
                    fillColor: const Color.fromARGB(255, 232, 190, 65)),
                style: TextStyle(fontSize: 20),
              ),
              Divider(),
              Container(
                decoration: BoxDecoration(
                    color: Colors.orange,
                    borderRadius: BorderRadius.circular(25.0)),
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                child: Center(
                    child: Text(
                        'TExt area y tambien para foto y audios (puede ser)')),
              )
            ],
          ),
        ));
  }
}
