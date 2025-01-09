import 'package:conocete/ui/pages/novedad/widgets/novedad.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'carouselItem.dart';

// ignore: must_be_immutable
class Carousel extends StatelessWidget {
  List<Novedad> objetos = [];

  Carousel(this.objetos, {super.key});

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(
          height: 250.0,
          aspectRatio: 16 / 9,
          viewportFraction: 0.70,
          initialPage: 0,
          enableInfiniteScroll: true,
          reverse: false,
          autoPlay: true,
          autoPlayInterval: Duration(seconds: 7),
          autoPlayAnimationDuration: Duration(milliseconds: 1600),
          autoPlayCurve: Curves.fastOutSlowIn,
          enlargeCenterPage: true,
          enlargeFactor: 0.3,
          scrollDirection: Axis.horizontal),
      items: objetos.map((item) {
        return Builder(
          builder: (BuildContext context) {
            return CarouselItem(item);
          },
        );
      }).toList(),
    );
  }
}
