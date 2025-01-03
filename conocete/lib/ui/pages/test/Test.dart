import 'package:conocete/ui/pages/test/siguientes/Test2.dart';
import 'package:conocete/ui/pages/tipoUsr/TipoUsr.dart';
import 'package:flutter/material.dart';

import '../widgets/BotonApp.dart';
import '../widgets/NavBar.dart';
import '../widgets/boton_doble.dart';

class Test extends StatelessWidget {
  const Test({super.key});

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
        body:Center(child:
        Column(
          children: [
            Image(image: AssetImage('assets/logo_app.png'),width:altura*0.3,),

            SizedBox(
              width: anchura*0.8,
              child: Text( style: TextStyle(
                fontSize: 20,
              )

                  ,'¡Hola! Queremos que tu experiencia sea única y especial. Para lograrlo, necesitamos conocer un poquito más sobre ti. ¡No te preocupes! Toda la información que nos compartas será tratada con total confidencialidad. Tus datos personales están seguros con nosotras. ¡Ayúdanos a conocerte mejor para ofrecerte lo que realmente necesitas!'),
                    ),

            SizedBox(
              height: altura * 0.10,
              width: anchura *  0.7,),

            BotonDoble(etiqueta: "anterior", sig: Test2(), etiqueta2: 'siguiente', ant: TipoUsr(),)

                  ],

          ),
        ),
    );
  }
}

