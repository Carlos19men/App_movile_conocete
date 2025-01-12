import 'package:conocete/ui/pages/widgets/boton_app.dart';
import 'package:conocete/ui/pages/widgets/botonasistente.dart';
import 'package:flutter/material.dart';

import '../../widgets/NavBar.dart';
import '../../widgets/cust_appbar.dart';

class Cuestionario extends StatefulWidget {
  const Cuestionario({super.key});

  @override
  _CuestionarioState createState() => _CuestionarioState();
}

class _CuestionarioState extends State<Cuestionario> {
  bool _consumeTabaco = false;
  bool _consumeAlcohol = false;
  bool _haceEjercicio = false;
  bool _consumeAnticonceptivos = false;
  bool _terapiaRemplazoHormonal = false;

  @override
  Widget build(BuildContext context) {
    var altura = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: CustomAppbar(),
      body: Center(
        child: ListView(
          padding: EdgeInsets.all(50),
          children: [
            SizedBox(
              height: altura * 0.1,
            ),
            DecoratedBox(
              decoration: BoxDecoration(
                color: Colors.grey[200],
                border: Border(bottom: BorderSide(color: Colors.black)),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Consume tabaco?"),
                  Checkbox(
                    value: _consumeTabaco,
                    onChanged: (value) {
                      setState(() {
                        _consumeTabaco = value!;
                      });
                    },
                  ),
                ],
              ),
            ),
            DecoratedBox(
              decoration: BoxDecoration(
                color: Colors.grey[200],
                border: Border(bottom: BorderSide(color: Colors.black)),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Consume alcohol?"),
                  Checkbox(
                    value: _consumeAlcohol,
                    onChanged: (value) {
                      setState(() {
                        _consumeAlcohol = value!;
                      });
                    },
                  ),
                ],
              ),
            ),
            DecoratedBox(
              decoration: BoxDecoration(
                color: Colors.grey[200],
                border: Border(bottom: BorderSide(color: Colors.black)),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Hace ejercicio?"),
                  Checkbox(
                    value: _haceEjercicio,
                    onChanged: (value) {
                      setState(() {
                        _haceEjercicio = value!;
                      });
                    },
                  ),
                ],
              ),
            ),
            DecoratedBox(
              decoration: BoxDecoration(
                color: Colors.grey[200],
                border: Border(bottom: BorderSide(color: Colors.black)),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Consume anticonceptivos"),
                  Checkbox(
                    value: _consumeAnticonceptivos,
                    onChanged: (value) {
                      setState(() {
                        _consumeAnticonceptivos = value!;
                      });
                    },
                  ),
                ],
              ),
            ),
            DecoratedBox(
              decoration: BoxDecoration(
                color: Colors.grey[200],
                border: Border(bottom: BorderSide(color: Colors.black)),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Está en terapia de remplazo hormonal?"),
                  Checkbox(
                    value: _terapiaRemplazoHormonal,
                    onChanged: (value) {
                      setState(() {
                        _terapiaRemplazoHormonal = value!;
                      });
                    },
                  ),
                ],
              ),
            ),
            SizedBox(
              height: altura * 0.3,
            ),
            BotonNav(etiqueta: "Comenzar", sig: Navbar(), hacer: () {}),
          ],
        ),
      ),
      floatingActionButton: Asist(),
    );
  }
}