
import 'package:flutter/material.dart';

import '../LogReg/log_reg.dart';
import '../widgets/boton_app.dart';


class Onboarding extends StatelessWidget {
  const Onboarding({super.key});

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
        titleTextStyle: Theme.of(context).textTheme.titleLarge,
      ),
        backgroundColor: Theme.of(context).primaryColor,
      body:Stack(
        children: [
          Center( heightFactor: 1.5,
          child: Image(image: AssetImage('assets/logo_app.png'),width:altura*0.2,),
        ),
          Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [

                Stack(
                    alignment:Alignment(0, -1),
                    children: [
                       Center(

                        child: Image(height: altura*0.5,
                          image: AssetImage('assets/chica_onboard.png'),
                        ),
                      ),
                      BotonNav(etiqueta: "Iniciar", sig: LogReg())
                    ]),
              ]),
        ],
      ),

    );
  }


}
