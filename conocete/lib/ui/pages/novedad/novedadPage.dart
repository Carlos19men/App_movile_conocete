import 'package:conocete/ui/pages/novedad/widgets/novedad.dart';
import 'package:flutter/material.dart';
import '../widgets/bodyMargin.dart';

// ignore: must_be_immutable
class NovedadPage extends StatelessWidget {
  Novedad novedad;

  NovedadPage(this.novedad);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Conócete')),
        backgroundColor: Color.fromARGB(255, 255, 167, 221),
      ),
      body: Bodymargin(
        ListView(children: [
          //Imagen de la novedad
          Container(
              width: 150,
              height: 250,
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(20.0),
                  child: Image.network(
                    novedad.imgUrl,
                    fit: BoxFit.cover,
                  ))),

          //Titulo de la novedad
          Text(
            novedad.titulo,
            style: TextStyle(
              fontSize: 32,
            ),
          ),

          Divider(),

          //texto de la novedad
          Text(novedad.information)
        ]),
      ),
    );
  }
}
