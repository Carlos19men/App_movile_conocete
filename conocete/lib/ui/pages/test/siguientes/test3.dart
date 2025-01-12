import 'package:flutter/material.dart';

import '../../widgets/boton_doble.dart';
import '../../widgets/botonasistente.dart';
import '../../widgets/cust_appbar.dart';
import 'Test2.dart';
import 'cuestionario.dart';

class Test3 extends StatefulWidget {
  const Test3({super.key});

  @override
  State<Test3> createState() => _Test3State();
}

class _Test3State extends State<Test3> {
  String textoemb = "";

  var check1 = false;
  var check2 = false;

  var rellenar = Column(children: [SizedBox(height:23),SizedBox(height: 30,)]);

  void quitar (){
    rellenar = Column(children: [SizedBox(height:23 ) ,SizedBox(height: 30,)],);
  }
  void mostrar (){
    rellenar = Column(children: [SizedBox(height:23 ,child:
      Text("Pregunta del embarazo")),SizedBox(height: 30,child:
    Padding(padding: EdgeInsets.all(40),child:
    TextField(),))]);

  }

@override
  Widget build(BuildContext context) {
    // TODO: implement build

    final altura = MediaQuery.of(context).size.height;
    // ignore: unused_local_variable
    final anchura = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: CustomAppbar(),
      body: Center(
        child: Column(
          children: [
            SizedBox(height: altura * 0.05),
            SizedBox(
              width: anchura * 0.8,
              child: Text(
                  style: TextStyle(
                    fontSize: 20,

                  ),
                  'Vamos a conocerte un poco'),
            ),
            SizedBox(
                height: altura*0.05),
            SizedBox(
              width: anchura*0.8,
              child: Text(style: TextStyle(fontSize: 20,),'Has vivido un embarazo?'),
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image(
                  image: AssetImage(
                    'assets/img/t41.png',
                  ),
                  width: anchura * 0.25,
                ),
                SizedBox(
                  width: anchura * 0.2,
                ),
                Image(
                  image: AssetImage('assets/img/t42.png'),
                  width: anchura * 0.25,
                ),
              ],
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Checkbox(value: check1, onChanged:(value) {
                  setState(() {
                    if (textoemb != "Si, he vivido un embarazo"){
                      textoemb = "Si, he vivido un embarazo";
                      mostrar();}
                    else
                    {textoemb = "No he vivido un embarazo";
                    quitar();}
                    check2=check1;
                    check1= !check1;

                  });
                  }, ),
                SizedBox(
                  width: anchura * 0.4,
                ),
                Checkbox(value: check2, onChanged:(val) {
                  setState(() {
                    if (textoemb != "No he vivido un embarazo"){
                      textoemb = "No he vivido un embarazo";
                      quitar();}
                    else
                    {textoemb = "Si, he vivido un embarazo";
                    mostrar();}
                    check1=check2;
                    check2= !check2;

                  });
                }, ),
              ],
            ),

            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Si.", style: TextStyle(fontSize: 20)),
                SizedBox(
                  width: anchura * 0.45,
                ),
                Text("No.", style: TextStyle(fontSize: 20)),
              ],
            ),

            SizedBox(
              height: altura * 0.05,
            ),
            SizedBox(
              height: altura * 0.078,
              child: Text(textoemb, style: TextStyle(fontSize: 20)),
            ),
            rellenar,
            SizedBox(
              height: altura*0.05,
            ),
            BotonDoble(
                etiqueta: "Anterior",
                ant: Test2(),
                etiqueta2: "Siguiente",
                sig: Cuestionario())
          ],
        ),
      ),
      floatingActionButton: Asist(),
    );
  }
}
