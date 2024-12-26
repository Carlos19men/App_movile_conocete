import 'package:flutter/material.dart';

class BotonNav extends StatelessWidget {

  final String etiqueta;

  final Object sig;

  const BotonNav(
      {super.key,
      required this.etiqueta,
      required this.sig});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextButton(
          style: ButtonStyle(
            foregroundColor: WidgetStateProperty.all<Color>(Color(0xff2e2e2e)),
            backgroundColor: WidgetStateProperty.resolveWith<Color?>(
              (Set<WidgetState> states) {
                if (states.contains(WidgetState.pressed)) {
                  return Theme.of(context)
                      .colorScheme
                      .tertiary
                      .withOpacity(0.5);
                }
                return Theme.of(context)
                    .colorScheme
                    .secondary; // Use the component's default.
              },
            ),
          ),
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => sig as Widget),
            );
          },
          child:  Text(
            etiqueta,
            textScaler: TextScaler.linear(2),
          )),
    );
  }
}
