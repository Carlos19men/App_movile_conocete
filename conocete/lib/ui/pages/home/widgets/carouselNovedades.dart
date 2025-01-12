import 'dart:convert';
import 'package:conocete/ui/pages/novedad/widgets/novedad.dart';
import 'package:conocete/ui/pages/widgets/carousel.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CarouselNews extends StatefulWidget {const CarouselNews({super.key});



  @override
  State<CarouselNews> createState() => _CarouselNewsState();
}

class _CarouselNewsState extends State<CarouselNews> {
  List _items = [];
  //consulta de la lista de novedades
  @override
  void initState() {
    super.initState();
    readJson();
  }


  Future<void> readJson() async {
  if (_items.isEmpty) {
    final String response =
    await rootBundle.loadString('assets/novedades/novedades.json');

    final data = await json.decode(response);

    setState(() {
      _items = data;
    });
  }
  }

  @override
  Widget build(BuildContext context) {
    if (_items.isEmpty) {
      return Center(child: CircularProgressIndicator());
    }
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
