import 'package:flutter/material.dart';

class BotonNav extends StatelessWidget {

  final String etiqueta;
  final VoidCallback hacer;
  final Widget sig;

  const BotonNav(
      {super.key,
      required this.etiqueta,
      required this.sig, required this.hacer});



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
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => sig),
            );
          },
          child:  Text(
            etiqueta,
            textScaler: TextScaler.linear(2),
          )),
    );
  }
}
