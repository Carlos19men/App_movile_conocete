import 'package:flutter/material.dart';
import 'widgets/textItem.dart';
import 'widgets/textBlock.dart';
import 'autoExamen.dart';

// ignore: must_be_immutable
class Tusalud extends StatelessWidget {
  List<String> caracteristicas = [
    'Conóce tu cuerpo',
    'Exáminate',
    'Hazlo parte de tu rutina'
  ];

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    //No usar por ahora
    //List<String> estados = ['Candasa', 'Con dolor', 'Debil'];

    return ListView(
      children: [
        //widget del todo el auto examen
        Stack(
          children: [
            //fondo
            Container(
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 255, 230, 246),
                borderRadius: BorderRadius.circular(25.0),
              ),
              width: MediaQuery.of(context).size.width,
              height: 200.0,
              margin: EdgeInsets.symmetric(horizontal: 5.0, vertical: 5.0),
            ),

            //texto bloque de texto del auto examen
            Positioned(
                left: 30.0,
                top: 30.0,
                child: Column(
                  children: [
                    TextItem(Icon(Icons.abc), 'Conoce tu cuerpo'),
                    TextItem(Icon(Icons.abc), 'Conoce tu cuerpo'),
                    TextItem(Icon(Icons.abc), 'Conoce tu cuerpo')
                  ],
                )),

            //imagen de la mujer del auto examen

            Positioned(
                left: 170,
                top: 10,
                child: Image.asset(
                  'assets/img/mujer_autoexamen.png',
                  width: 170,
                  height: 195,
                )),

            // boton de realizar autoexamen
            Positioned(
              left: 20.0,
              bottom: 20.0,
              child: Container(
                padding: EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(25.0)),
                child: Expanded(
                  child: InkWell(
                    child: Text('Realizar autoexamen',
                        style: TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 16)),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Autoexamen()));
                    },
                  ),
                ),
              ),
            ),
          ],
        ),

        Container(
          margin: EdgeInsets.only(left: 20.0, top: 10.0),
          child: Text('Examenes'),
        ),

        Divider(),

        //bloque de ultimo autoexamen
        TextBlock('Ultimo auto-examen: ', 'hace dos semanas', Colors.red),

        //bloque de proximo autoexamen
        TextBlock('Proximo auto-examen: ', 'Mañana', Colors.black),

        //bloque de como te sientes (por definir)

        Container(
          margin: EdgeInsets.only(left: 20.0),
          child: Text('¿Como te sientes hoy?'),
        ),

        Divider(),

        Container(
            margin: EdgeInsets.only(left: 20.0),
            child: CheckboxListTile.adaptive(
              value: false,
              onChanged: null,
              title: Text('Con dolor '),
            )),

        Container(
            margin: EdgeInsets.only(left: 20.0),
            child: CheckboxListTile.adaptive(
              value: false,
              onChanged: null,
              title: Text('Fatiga'),
            )),

        Container(
            margin: EdgeInsets.only(left: 20.0),
            child: CheckboxListTile.adaptive(
              value: false,
              onChanged: null,
              title: Text('Cansada'),
            )),

        //grafica (buscar la libreria)
      ],
    );
  }
}
