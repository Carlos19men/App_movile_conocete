import 'package:flutter/material.dart';

class Cardspecialis extends StatefulWidget {
  const Cardspecialis({super.key});

  @override
  State<Cardspecialis> createState() => _CardspecialisState();
}

class _CardspecialisState extends State<Cardspecialis> {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
          margin: EdgeInsets.all(15.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Especialista 1'),
              Image.asset(
                'assets/img/mujer_autoexamen1.png',
                width: 60,
                height: 70,
              )
            ],
          )),
    );
  }
}
