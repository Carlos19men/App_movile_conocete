import 'package:conocete/ui/pages/chatbot/chatbot.dart';
import 'package:flutter/material.dart';
class Asist extends StatelessWidget{

  @override
  Widget build(BuildContext context) {

    return FloatingActionButton(onPressed: (){
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => GroqExample()),
      );
    },child: Image(image: AssetImage('assets/assist.png'),),);
  }

}
