import 'dart:convert';
import 'package:conocete/ui/pages/novedad/widgets/novedad.dart';
import 'package:conocete/ui/pages/widgets/carousel.dart';
import 'package:conocete/ui/pages/widgets/carouselItem.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CarouselNews extends StatefulWidget {
  const CarouselNews({super.key});

  @override
  State<CarouselNews> createState() => _CarouselNewsState();
}

class _CarouselNewsState extends State<CarouselNews> {
  //consulta de la lista de novedades

  List _items = [
    {'hola': 'como vas'}
  ];

  Future<void> readJson() async {
    final String response =
        await rootBundle.loadString('assets/novedades/novedades.json');

    final data = await json.decode(response);

    setState(() {
      _items = data;
    });
  }

  @override
  Widget build(BuildContext context) {
    readJson();

    //desordenamos la lista
    //creamos una sita de novedades

    Novedad novedad1 =
        Novedad(_items[0]['title'], _items[0]['img'], _items[0]['informacion']);
    Novedad novedad2 =
        Novedad(_items[1]['title'], _items[1]['img'], _items[1]['informacion']);
    Novedad novedad3 =
        Novedad(_items[2]['title'], _items[2]['img'], _items[2]['informacion']);

    return Carousel([novedad1, novedad2, novedad3]);
  }
}
