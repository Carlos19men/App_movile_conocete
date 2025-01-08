import 'package:conocete/ui/pages/test/Test.dart';
import 'package:flutter/material.dart';

Future<void> register(TextEditingController email,TextEditingController contrasena,TextEditingController cont2, BuildContext context ) async{

  Navigator.push(context, MaterialPageRoute(builder: (context) => Test()));

}