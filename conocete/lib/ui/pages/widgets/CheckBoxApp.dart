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

  bool checkBoxVal1= true;
  bool checkBoxVal2= false;
  bool checkBoxVal3= false;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        CheckboxListTile(title:Text(""),value: checkBoxVal1, onChanged: (bool? value){
          setState(() {
            if(value==true){
              checkBoxVal1= value!;
              checkBoxVal2= !value;
              checkBoxVal3= !value;
            }


          });
        }
        ),
        CheckboxListTile(value: checkBoxVal2, onChanged: (bool? value){
          setState(() {
            if(value==true){
              checkBoxVal1= !value!;
              checkBoxVal2= value;
              checkBoxVal3= !value;
            }


          });

        }),
        CheckboxListTile(value: checkBoxVal3, onChanged: (bool? value){
          setState(() {
            if(value==true){
              checkBoxVal1= !value!;
              checkBoxVal2= !value;
              checkBoxVal3= value;
            }
          });
        }),

      ],
    );
  }
}
