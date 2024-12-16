import 'package:conocete/ui/pages/LogReg/LogReg.dart';
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
          Padding(padding: EdgeInsets.only(left: anchura* 0.3),
          child: Image(image: AssetImage('assets/logo_app.png'), width: anchura * 0.4),
        ),
          Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [

                Stack(
                    alignment:Alignment(0, -1),
                    children: [
                      const Center(

                        child: Image(height: 450,
                          image: AssetImage('assets/chica_onboard.png'),
                        ),
                      ),
                      Center(
                        child: TextButton(
                            style: ButtonStyle(
                              foregroundColor: WidgetStateProperty.all<Color>(Color(0xff2e2e2e)),
                              backgroundColor: WidgetStateProperty.resolveWith<Color?>(
                                    (Set<WidgetState> states) {
                                  if (states.contains(WidgetState.pressed)) {
                                    return Theme.of(context).colorScheme.tertiary.withOpacity(0.5);
                                  }
                                  return Theme.of(context).colorScheme.secondary; // Use the component's default.
                                },
                              ),
                            ),
                            onPressed: () {
                              Navigator.of(context).push(
                                MaterialPageRoute(builder: (context) => const LogReg()),
                              );
                            },
                            child: const Text('Iniciar',textScaler: TextScaler.linear(2),) ),

                      ),
                    ]),
              ]),
        ],
      ),

    );
  }


}
