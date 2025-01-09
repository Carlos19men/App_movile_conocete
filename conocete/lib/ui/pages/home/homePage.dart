import 'package:conocete/ui/pages/home/widgets/carouselNovedades.dart';
import 'package:flutter/material.dart';
import 'widgets/recordatorios.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView(children: <Widget>[
      Center(child: Text(style: TextStyle(fontSize: 24), 'Novedades')),
      CarouselNews(),
      Recordatorio(),
    ]);
  }
}
