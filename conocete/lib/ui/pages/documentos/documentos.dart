import 'package:flutter/material.dart';

class DocumentPage extends StatelessWidget {
  const DocumentPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Mis Documentos')),
        backgroundColor: Color.fromARGB(255, 255, 167, 221),
      ),
      body: Container(
        child: Row(
          children: [
            Container(
              child: Text('Notas'),
            ),
            TextField(
              decoration: InputDecoration(fillColor: Colors.grey[70]),
            ),
            Container(
              margin: EdgeInsets.only(top: 10.0),
              child: ListView(
                children: [
                  ListTile(
                    leading: Icon(Icons.abc),
                    title: Text('Titulo tarea 1'),
                    subtitle: Text('esta es la description de la nota'),
                  ),
                  ListTile(
                    leading: Icon(Icons.abc),
                    title: Text('Titulo tarea 1'),
                    subtitle: Text('esta es la description de la nota'),
                  ),
                  ListTile(
                    leading: Icon(Icons.abc),
                    title: Text('Titulo tarea 1'),
                    subtitle: Text('esta es la description de la nota'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
