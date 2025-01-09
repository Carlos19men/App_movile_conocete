import 'package:conocete/ui/pages/novedad/widgets/novedad.dart';
import 'package:flutter/material.dart';
import '../novedad/novedadPage.dart';

// ignore: must_be_immutable
class CarouselItem extends StatefulWidget {
  Novedad novedad;

  CarouselItem(this.novedad, {super.key});

  @override
  State<StatefulWidget> createState() {
    return _CarouselItem(novedad);
  }
}

class _CarouselItem extends State<CarouselItem> {
  Novedad novedad;

  _CarouselItem(this.novedad);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 270,
        height: 230,
        decoration: BoxDecoration(
            color: Colors.black.withAlpha(128),
            borderRadius: BorderRadius.circular(20.0)),
        child: InkWell(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => NovedadPage(novedad)));
          },
          child: Stack(
            children: [
              ClipRRect(
                  borderRadius: BorderRadius.circular(20.0),
                  child: Image.network(
                    novedad.imgUrl,
                    fit: BoxFit.cover,
                    height: 300,
                  )),
              Container(
                decoration: BoxDecoration(
                    color: Colors.black.withAlpha(128),
                    borderRadius: BorderRadius.circular(20.0)),
              ),
              Positioned(
                bottom: 15,
                left: 15,
                child: Text(
                  novedad.titulo.length > 16
                      ? novedad.titulo.substring(0, 16) + '...'
                      : novedad.titulo,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 28,
                      fontWeight: FontWeight.w700),
                ),
              )
            ],
          ),
        ));
  }
}
