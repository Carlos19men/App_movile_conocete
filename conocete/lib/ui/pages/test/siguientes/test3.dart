import 'package:flutter/material.dart';

import '../../widgets/boton_doble.dart';
import 'Test2.dart';
import 'cuestionario.dart';

class Test3 extends StatefulWidget {
  const Test3({super.key});

  @override
  State<Test3> createState() => _Test3State();
}

class _Test3State extends State<Test3> {
  String textoemb = "";

  var check1 = true;
  var check2 = false;
@override
  Widget build(BuildContext context) {
    // TODO: implement build

    final altura = MediaQuery.of(context).size.height;
    // ignore: unused_local_variable
    final anchura = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.primary,
        title: const Center(
          child: Text("Conócete"),
        ),
        titleTextStyle: Theme.of(context).textTheme.headlineLarge,
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(
              child: Text(
                "Ha vivido un embarazo?",
                style: TextStyle(fontSize: 25),
              ),
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image(
                  image: AssetImage(
                    'assets/img/t41.png',
                  ),
                  width: anchura * 0.3,
                ),
                SizedBox(
                  width: anchura * 0.2,
                ),
                Image(
                  image: AssetImage('assets/img/t42.png'),
                  width: anchura * 0.3,
                ),
              ],
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Checkbox(value: check1, onChanged:(value) {
                  setState(() {
                  textoemb = "no, Tabien";
                  check2=check1;
                  check1= !check1;
                  });
                  }, ),
                SizedBox(
                  width: anchura * 0.4,
                ),
                Checkbox(value: check2, onChanged:(val) {
                  setState(() {
                    textoemb = "si, Tamal";
                    check1=check2;
                    check2= !check2;
                  });
                }, ),
              ],
            ),
            SizedBox(
              height: altura * 0.3,
              child: Text(textoemb, style: TextStyle(fontSize: 20)),
            ),

            BotonDoble(
                etiqueta: "Atras",
                ant: Test2(),
                etiqueta2: "Siguiente",
                sig: Cuestionario())
          ],
        ),
      ),
    );
  }
}
