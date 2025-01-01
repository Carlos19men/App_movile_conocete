import 'package:flutter/material.dart';
import '../widgest/bodyMargin.dart';
import 'newDocumento.dart';

class Documentos extends StatelessWidget {
  const Documentos({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Conócete')),
        backgroundColor: Color.fromARGB(255, 255, 167, 221),
      ),
      body: Bodymargin(ListView(
        children: [
          //titulo
          Container(child: Text('Mis documentos')),

          //
          TextField(
            decoration: InputDecoration(label: Text('Nombre del documento')),
          ),

          //lista de documentos
          Container(
            width: MediaQuery.of(context).size.width,
            height: 400,
            margin: EdgeInsets.only(top: 20.0),
            child: ListView(
              children: [
                ListTile(
                  leading: Icon(Icons.abc_outlined),
                  title: Text('Documento 1'),
                ),
                ListTile(
                  leading: Icon(Icons.abc_outlined),
                  title: Text('Documento 1'),
                ),
                ListTile(
                  leading: Icon(Icons.abc_outlined),
                  title: Text('Documento 1'),
                ),
              ],
            ),
          ),

          Center(
            child: Container(
              margin: EdgeInsets.only(top: 20.0),
              width: 60,
              height: 60,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Newdocumento()));
                },
                child: Text(
                  '+',
                  style: TextStyle(fontSize: 24),
                ),
              ),
            ),
          ),
        ],
      )),
    );
  }
}
