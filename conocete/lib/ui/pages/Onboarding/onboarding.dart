import 'package:conocete/ui/pages/LogReg/log_reg.dart';
import 'package:conocete/ui/pages/widgets/boton_app.dart';
import 'package:conocete/ui/pages/widgets/cust_appbar.dart';
import 'package:flutter/material.dart';


class Onboarding extends StatelessWidget {
  const Onboarding({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    final altura = MediaQuery.of(context).size.height;

    // ignore: unused_local_variable
    final anchura = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: CustomAppbar(),
      body:Stack(
        children: [
          Center( heightFactor: 1.0,
          child: Image(image: AssetImage('assets/logo_app.png'),height:altura*0.25,),
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
                      Positioned(
                      top: altura*0.3,
                   child: Center(
                     child: TextButton(
                         style: ButtonStyle(
                           foregroundColor: WidgetStateProperty.all<Color>(Color(0xff2e2e2e)),
                           backgroundColor: WidgetStateProperty.resolveWith<Color?>(
                                 (Set<WidgetState> states) {
                               if (states.contains(WidgetState.pressed)) {
                                 return Theme.of(context)
                                     .colorScheme
                                     .tertiary
                                     .withAlpha(128);
                               }
                               return Theme.of(context)
                                   .colorScheme
                                   .surface.withAlpha(200); // Use the component's default.
                             },
                           ),
                         ),
                         onPressed: () {
                           Navigator.push(
                             context,
                             MaterialPageRoute(builder: (context) => LogReg()),
                           );
                         },
                         child:  Text(
                           "Iniciar",
                           textScaler: TextScaler.linear(2),
                         )),
                   ),)
                    ]),
              ]),
        ],
      ),
      backgroundColor: Theme.of(context).colorScheme.primary,

    );
  }


}
