import 'package:conocete/ui/pages/LogReg/LogReg.dart';
import 'package:conocete/ui/pages/widgets/BotonApp.dart';
import 'package:flutter/material.dart';


class Onboarding extends StatelessWidget {
  const Onboarding({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    final altura = MediaQuery.of(context).size.height;

    final anchura = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.primary,
        title: const Center(
          child: Text("Conócete"),
        ),
        titleTextStyle: Theme.of(context).textTheme.headlineLarge,
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
