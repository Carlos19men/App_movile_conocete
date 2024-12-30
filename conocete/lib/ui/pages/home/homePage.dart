import 'package:conocete/ui/pages/widgest/NavBar.dart';
import 'package:flutter/material.dart';
import 'widgets/recordatorios.dart';
import '../widgest/carousel.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return
      Scaffold(

        body: ListView(children: <Widget>[
          Center(child: Text(style: TextStyle(fontSize: 24), 'Novedades')),
          Carousel(),
          Recordatorio(),
        ])
      );



  }
}
