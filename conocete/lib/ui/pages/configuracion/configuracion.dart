import 'package:flutter/material.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Center(child: Text('Configuración')),
          backgroundColor: Color.fromARGB(255, 255, 167, 221),
        ),
        body: Container(
          margin: EdgeInsets.all(8.0),
          child: Column(
            children: [
              //accesibilidad
              InkWell(
                child: ListTile(
                  leading: Icon(Icons.assist_walker_sharp),
                  title: Text('Accesibilidad'),
                  shape:
                      Border(bottom: BorderSide(color: Colors.grey, width: 1)),
                ),
                onTap: () {},
              ),

              //accesibilidad
              InkWell(
                child: ListTile(
                  leading: Icon(Icons.assist_walker_sharp),
                  title: Text('Privavidad y seguridad'),
                  shape:
                      Border(bottom: BorderSide(color: Colors.grey, width: 1)),
                ),
                onTap: () {},
              ),

              //accesibilidad
              InkWell(
                child: ListTile(
                  leading: Icon(Icons.assist_walker_sharp),
                  title: Text('Notificaciones'),
                  shape:
                      Border(bottom: BorderSide(color: Colors.grey, width: 1)),
                ),
                onTap: () {},
              ),

              //accesibilidad
              InkWell(
                child: ListTile(
                  leading: Icon(Icons.assist_walker_sharp),
                  title: Text('Asistente Virtual'),
                  shape:
                      Border(bottom: BorderSide(color: Colors.grey, width: 1)),
                ),
                onTap: () {},
              ),
            ],
          ),
        ));
  }
}
