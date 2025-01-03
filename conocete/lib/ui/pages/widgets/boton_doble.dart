import 'package:flutter/material.dart';

class BotonDoble extends StatelessWidget {

  const BotonDoble({super.key, required this.etiqueta, required this.sig, required this.etiqueta2, required this.ant});

  final String etiqueta;
  final String etiqueta2;
  final Object ant;
  final Object sig;



  @override
  Widget build(BuildContext context) {


    return Center(child:Row(

      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        OutlinedButton(style: ButtonStyle(
          foregroundColor: WidgetStateProperty.all<Color>(Color(0xff2e2e2e)),
          backgroundColor: WidgetStateProperty.resolveWith<Color?>(
                (Set<WidgetState> states) {
              if (states.contains(WidgetState.pressed)) {
                return Theme.of(context)
                    .colorScheme
                    .tertiary
                    .withOpacity(0.5);
              }
              return Colors.white; // Use the component's default.
            },
          ),
        ),
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => ant as Widget),
              );
            },
            child:  Text(
              etiqueta,
              textScaler: TextScaler.linear(2),
            )),

        TextButton(
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
              etiqueta2,
              textScaler: TextScaler.linear(2),
            )
        ),

      ],
    ),
    );
  }
}
