import 'package:flutter/material.dart';
import '../widgest/bodyMargin.dart';

class Especialista extends StatelessWidget {
  const Especialista({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Center(child: Text('Especialistas')),
          backgroundColor: Color.fromARGB(255, 255, 167, 221),
        ),
        body: Bodymargin(ListView(
          children: [
            Container(
              decoration: BoxDecoration(
                  color: Colors.orange[100],
                  borderRadius: BorderRadius.circular(25.0)),
              width: MediaQuery.of(context).size.width,
              height: 200.0,
              child: Center(child: Text('Foto del especialista')),
            ),
            Divider(),
            Text('Texto que hable sobre el especialista')
          ],
        )));
  }
}
