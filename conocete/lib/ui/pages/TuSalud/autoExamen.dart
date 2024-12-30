import 'package:flutter/material.dart';

class Autoexamen extends StatefulWidget {
  const Autoexamen({super.key});

  @override
  State<Autoexamen> createState() => _AutoexamenState();
}

class _AutoexamenState extends State<Autoexamen> {
  _AutoexamenState();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //carrusel de fotos

      //Barra superior
      appBar: AppBar(
        title: Center(child: Text('Conócete')),
        backgroundColor: Color.fromARGB(255, 255, 167, 221),
      ),

      //cuerpo
      body: Container(
        padding: EdgeInsets.all(8.0),
        decoration: BoxDecoration(color: Colors.pink[100]),
        child: ListView(children: [
          Positioned(child: Image.asset('assets/img/mujer_autoexamen1.png')),

          Container(
            margin: EdgeInsets.only(left: 10.0, top: 10.0),
            child: Text('Paso 1: '),
          ),
          Container(
            margin: EdgeInsets.all(10.0),
            child: Text(
                'Estar atento a la presencia de los siguientes cambios al momento de realizar el examen: '),
          ),

          //lista de sintomas
          Container(
            margin: EdgeInsets.only(left: 30.0, top: 15.0, bottom: 15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('1. Cambio de textura'),
                Text('2. Cambio de temperatura'),
                Text('3. Cambio de la forma de la mama'),
                Text('4. Presencia de coloracion'),
                Text('5. Siente dolor'),
                Text('6. Presencia de coloracion'),
              ],
            ),
          ),

          //opciones
          Center(child: Text('¿Apreciaste algo en este paso?')),

          //botones de accion
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(onPressed: () {}, child: Text('Si')),
                ElevatedButton(onPressed: () {}, child: Text('No'))
              ],
            ),
          ),

          //text Fied
          Container(
            margin: EdgeInsets.only(top: 20.0, bottom: 15.0),
            child: TextField(
              decoration: InputDecoration(
                  hintText: 'Escribe aquí si encontraste algo',
                  filled: true,
                  fillColor: Colors.grey[75]),
            ),
          ),

          Center(
            child: ElevatedButton(onPressed: () {}, child: Text('Siguiente')),
          )
        ]),
      ),

      //barra inferior de navegacion

      endDrawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(color: Colors.pink[400]),
              child: Text('Inicio'),
            ),
            ListTile(
              leading: Icon(Icons.supervised_user_circle_sharp),
              title: Text('Perfil'),
            ),
            ListTile(
              leading: Icon(Icons.supervised_user_circle_sharp),
              title: Text('Perfil'),
            ),
            ListTile(
              leading: Icon(Icons.supervised_user_circle_sharp),
              title: Text('Perfil'),
            ),
            Divider(),
          ],
        ),
      ),
    );
  }
}
