import 'package:flutter/material.dart';

class CheckBoxApp extends StatelessWidget {
  final String texto1;
  final String texto2;
  final String texto3;
  final ValueChanged<String> onTextoTipoChanged;

  const CheckBoxApp({
    super.key,
    required this.texto1,
    required this.texto2,
    required this.texto3,
    required this.onTextoTipoChanged,
  });


  @override
  Widget build(BuildContext context) {
    return CheckboxExample(
      texto1: texto1,
      texto2: texto2,
      texto3: texto3,
      onTextoTipoChanged: onTextoTipoChanged,
    );
  }
}

class CheckboxExample extends StatefulWidget {
  final String texto1;
  final String texto2;
  final String texto3;
  final ValueChanged<String> onTextoTipoChanged;

  const CheckboxExample({
    super.key,
    required this.texto1,
    required this.texto2,
    required this.texto3,
    required this.onTextoTipoChanged,
  });

  @override
  State<CheckboxExample> createState() => _CheckboxExampleState();
}

class _CheckboxExampleState extends State<CheckboxExample> {
  bool checkBoxVal1 = true;
  bool checkBoxVal2 = false;
  bool checkBoxVal3 = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(
          height: MediaQuery.of(context).size.height*0.1,
          color: checkBoxVal1
              ? Theme.of(context).colorScheme.primary
              : Colors.transparent,
          child: CheckboxListTile(
            title: Text(widget.texto1),
            value: checkBoxVal1,
            onChanged: (bool? value) {
              setState(() {
                if (value == true) {
                  checkBoxVal1 = value!;
                  checkBoxVal2 = !value;
                  checkBoxVal3 = !value;
                  widget.onTextoTipoChanged("Estás interesada en saber sobre tu salud");
                }
              });
            },
          ),
        ),
        Container(
          height: MediaQuery.of(context).size.height*0.1,
          color: checkBoxVal2
              ? Theme.of(context).colorScheme.primary
              : Colors.transparent,
          child: CheckboxListTile(
            title: Text(widget.texto2),
            value: checkBoxVal2,
            onChanged: (bool? value) {
              setState(() {
                if (value == true) {
                  checkBoxVal1 = !value!;
                  checkBoxVal2 = value;
                  checkBoxVal3 = !value;
                  widget.onTextoTipoChanged("Acudiste con un médico y tu diagnóstico resultó positivo para cáncer de mama. Te destacaremos información sobre procedimiento, ayuda y otras personas como tú.");
                }
              });
            },
          ),
        ),
        Container(
          height: MediaQuery.of(context).size.height*0.1,
          color: checkBoxVal3
              ? Theme.of(context).colorScheme.primary
              : Colors.transparent,
          child: CheckboxListTile(
            title: Text(widget.texto3),
            value: checkBoxVal3,
            onChanged: (bool? value) {
              setState(() {
                if (value == true) {
                  checkBoxVal1 = !value!;
                  checkBoxVal2 = !value;
                  checkBoxVal3 = value;
                  widget.onTextoTipoChanged("Tienes tiempo con tu diagnóstico y buscas algo para apoyarte a seguir adelante");
                }
              });
            },
          ),
        ),
      ],
    );
  }
}
