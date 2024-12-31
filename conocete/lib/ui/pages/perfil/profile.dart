import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Perfil')),
        backgroundColor: Color.fromARGB(255, 255, 167, 221),
      ),
      body: ListView(
        children: [
          //Icono del usuario
          Row(
            //icono del usuario
            children: [
              Icon(
                Icons.circle,
                size: 20.0,
              ),

              //nombre de usuarios y telefono
              Container(
                  child: Column(
                children: [Text('username'), Text('+580000000')],
              )),
            ],
          ),

          ListTile(
            leading: Icon(Icons.cached_outlined),
            title: Text('Editar Perfil'),
          ),

          ListTile(
            leading: Icon(Icons.cached_outlined),
            title: Text('Cambiar cuenta'),
          ),

          ListTile(
            leading: Icon(Icons.cached_outlined),
            title: Text('Cerrar sesion'),
          ),
          //Titulo de la novedad
        ],
      ),
    );
  }
}
