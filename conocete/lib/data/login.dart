import 'package:flutter/material.dart';
import '../ui/pages/widgets/NavBar.dart';

Future<void> login(TextEditingController email,TextEditingController contrasena,BuildContext context) async{

  Navigator.push(context, MaterialPageRoute(builder: (context) => Navbar()));

}