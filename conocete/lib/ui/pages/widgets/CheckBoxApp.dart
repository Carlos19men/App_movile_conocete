import 'package:flutter/material.dart';

class CheckBoxApp extends StatelessWidget {
  final String texto1;
  final String texto2;
  final String texto3;

  const CheckBoxApp({
    super.key,
    required this.texto1,
    required this.texto2,
    required this.texto3,
  });

  @override
  Widget build(BuildContext context) {
    return CheckboxExample(
      texto1: texto1,
      texto2: texto2,
      texto3: texto3,
    );
  }
}

class CheckboxExample extends StatefulWidget {
  final String texto1;
  final String texto2;
  final String texto3;

  const CheckboxExample({
    super.key,
    required this.texto1,
    required this.texto2,
    required this.texto3,
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
        CheckboxListTile(
          title: Text(widget.texto1),
          value: checkBoxVal1,
          onChanged: (bool? value) {
            setState(() {
              if (value == true) {
                checkBoxVal1 = value!;
                checkBoxVal2 = !value;
                checkBoxVal3 = !value;
              }
            });
          },
        ),
        CheckboxListTile(
          title: Text(widget.texto2),
          value: checkBoxVal2,
          onChanged: (bool? value) {
            setState(() {
              if (value == true) {
                checkBoxVal1 = !value!;
                checkBoxVal2 = value;
                checkBoxVal3 = !value;
              }
            });
          },
        ),
        CheckboxListTile(
          title: Text(widget.texto3),
          value: checkBoxVal3,
          onChanged: (bool? value) {
            setState(() {
              if (value == true) {
                checkBoxVal1 = !value!;
                checkBoxVal2 = !value;
                checkBoxVal3 = value;
              }
            });
          },
        ),
      ],
    );
  }
}