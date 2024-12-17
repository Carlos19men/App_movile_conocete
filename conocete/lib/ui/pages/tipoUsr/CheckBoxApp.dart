import 'package:flutter/material.dart';

class CheckBoxApp extends StatelessWidget {
  const CheckBoxApp({super.key});

  @override
  Widget build(BuildContext context) {
    return CheckboxExample();
  }
}

class CheckboxExample extends StatefulWidget {
  const CheckboxExample({super.key});

  @override
  State<CheckboxExample> createState() => _CheckboxExampleState();
}

class _CheckboxExampleState extends State<CheckboxExample> {
  bool? isChecked = true;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Checkbox(
          tristate: true,
          value: isChecked,
          onChanged: (bool? value) {
            setState(() {
              isChecked = value;
            });
          },
        ),
        Checkbox(
          isError: true,
          tristate: true,
          value: isChecked,
          onChanged: (bool? value) {
            setState(() {
              isChecked = value;
            });
          },
        ),
        Checkbox(
          isError: true,
          tristate: true,
          value: isChecked,
          onChanged: null,
        ),
      ],
    );
  }
}
