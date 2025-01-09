import 'package:conocete/ui/pages/test/Test.dart';
import 'package:conocete/ui/pages/widgets/boton_app.dart';
import 'package:conocete/ui/pages/widgets/check_box_app.dart';
import 'package:conocete/ui/pages/widgets/botonasistente.dart';
import 'package:flutter/material.dart';
import '../widgets/cust_appbar.dart';

class TipoUsr extends StatefulWidget {
  const TipoUsr({super.key});

  @override
  TipoUsrState createState() => TipoUsrState();
}

class TipoUsrState extends State<TipoUsr> {
  String textoTipo = " ";

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    void updateTextoTipo(String nuevo) {
      setState(() {
        textoTipo = nuevo;
      });
    }

    return Scaffold(
      appBar:  Custom_appbar(),
      body: Column(
        children: [
          Text(
            "Con que tipo de usuario te identificas?",
            style: TextStyle(fontSize: 20),
          ),
          Center(
              child: Image(
            height: 150,
            image: AssetImage('assets/eleccion_usr.png'),
          )),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.10,
            child: Text(textoTipo),
          ),
          CheckBoxApp(
              texto1: "Sin diagnóstico",
              texto2: "Diagnosticada recientemente",
              texto3: "Bajo tratamiento",
              onTextoTipoChanged: updateTextoTipo),
          BotonNav(etiqueta: "siguiente", sig: Test(),hacer:(){}),
        ],
      ),
      floatingActionButton: Asist(),
    );
  }
}
