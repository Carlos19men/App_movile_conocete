import 'package:conocete/ui/pages/test/Test.dart';
import 'package:conocete/ui/pages/tipoUsr/TipoUsr.dart';
import 'package:flutter/material.dart';

import '../../widgets/boton_doble.dart';

class Test4 extends StatelessWidget {
  const Test4({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    final altura = MediaQuery.of(context).size.height;
    // ignore: unused_local_variable
    final anchura = MediaQuery.of(context).size.width;

    double x = 10;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.primary,
        title: const Center(
          child: Text("Conócete"),
        ),
        titleTextStyle: Theme.of(context).textTheme.headlineLarge,
      ),
      body:Center(child:
      Column(
        children: [
          SizedBox(
              height: altura*0.05),
          SizedBox(
            width: anchura*0.8,
            child: Text( style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            )
                ,'Vamos a conocerte un poco'),
          ),
          SizedBox(
              height: altura*0.05),
          SizedBox(
            width: anchura*0.8,
            child: Text( style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            )
                ,'Cual es tu edad?'),
          ),
          Image(image: AssetImage('assets/img/t2.png'),width:anchura*0.8,),
          Slider(value: x  , onChanged:(valor) => x=valor,divisions: 10,label: "$x",max: 100,),
          SizedBox(
            child: Text("Edad: $x"),
          ),
          BotonDoble(etiqueta: "Atras", sig: Test(), etiqueta2: "Siguiente", ant: Test())

        ],

      ),
      ),
    );
  }
}
