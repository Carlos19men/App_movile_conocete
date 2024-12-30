import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import '../novedad/novedad.dart';

class Carousel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(
          height: 250.0,
          aspectRatio: 16 / 9,
          viewportFraction: 0.75,
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
      items: [1, 2, 3, 4, 5].map((i) {
        return Builder(
          builder: (BuildContext context) {
            return Container(
                width: MediaQuery.of(context).size.width,
                margin: EdgeInsets.symmetric(horizontal: 5.0, vertical: 5.0),
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 255, 167, 221),
                    borderRadius: BorderRadius.circular(25.0)),
                child: CarouselItem('text $i'));
          },
        );
      }).toList(),
    );
  }
}

// ignore: must_be_immutable
class CarouselItem extends StatefulWidget {
  String tituloNovedad;
  CarouselItem(this.tituloNovedad);

  State<StatefulWidget> createState() {
    return _CarouselItem(tituloNovedad);
  }
}

class _CarouselItem extends State<CarouselItem> {
  String titulo;

  _CarouselItem(this.titulo);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Expanded(
          child: Container(
            decoration: BoxDecoration(color: Colors.grey),
            child: Expanded(
              child: InkWell(
                child: Center(
                  child: Text('Imagen'),
                ),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Novedad(titulo)));
                },
              ),
            ),
          ),
        ),
        Positioned(
          child: Text('Nombre de la imagen'),
        )
      ],
    );
  }
}
