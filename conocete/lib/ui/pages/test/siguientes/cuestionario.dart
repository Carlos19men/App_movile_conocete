import 'package:conocete/ui/pages/widgets/BotonApp.dart';
import 'package:conocete/ui/pages/widgets/botonasistente.dart';
import 'package:flutter/material.dart';

import '../../widgets/NavBar.dart';
import '../../widgets/cust_appbar.dart';

class Cuestionario extends StatelessWidget {
  const Cuestionario({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Custom_appbar(),
      body: Center(
        child: ListView(
          padding: EdgeInsets.only(),
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("op1"),
                Checkbox(
                  value: false,
                  onChanged: (value) {},
                ),
              ],
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("op2"),
                Checkbox(
                  value: false,
                  onChanged: (value) {},
                ),
              ],
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("op3"),
                Checkbox(
                  value: false,
                  onChanged: (value) {},
                ),
              ],
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("op4"),
                Checkbox(
                  value: false,
                  onChanged: (value) {},
                ),
              ],
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("op5"),
                Checkbox(
                  value: false,
                  onChanged: (value) {},
                ),
              ],
            ),
            BotonNav(etiqueta: "Comenzar", sig: Navbar(), hacer: () {}),
          ],
        ),
      ),
      floatingActionButton: Asist(),
    );
  }
}
