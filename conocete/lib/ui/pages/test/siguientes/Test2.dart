import 'package:conocete/ui/pages/test/Test.dart';
import 'package:conocete/ui/pages/test/siguientes/test3.dart';
import 'package:flutter/material.dart';
import '../../widgets/boton_doble.dart';

class Test2 extends StatefulWidget {
  const Test2({super.key});

  @override
  State<Test2> createState() => _Test2State();
}

class _Test2State extends State<Test2> {
  double x = 0;
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
            SizedBox(height: altura * 0.05),
            SizedBox(
              width: anchura * 0.8,
              child: Text(
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                  'Vamos a conocerte un poco'),
            ),
            SizedBox(height: altura * 0.05),
            SizedBox(
              width: anchura * 0.8,
              child: Text(
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                  'Cual es tu edad?'),
            ),
            Image(
              image: AssetImage('assets/img/t2.png'),
              width: anchura * 0.8,
            ),
            Slider(
              value: x,
              onChanged: (valor) {
                setState(() => x = valor);
              },
              min: 0,
              max: 100,
              divisions: 100,
              label: "$x",
            ),

            SizedBox(
              child: Text(
                "Edad: $x",
                style: TextStyle(fontSize: 30),
              ),
            ),
            SizedBox(
              height: altura * 0.2,
            ),
            BotonDoble(
                etiqueta: "Atras",
                ant: Test(),
                etiqueta2: "Siguiente",
                sig: Test3(),)
          ],
        ),
      ),
    );
  }
}
