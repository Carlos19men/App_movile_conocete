import 'package:flutter/material.dart';
import '../configuracion/configuracion.dart';
import '../documentos/documentos.dart';
import '../especialistas/especialistas.dart';
import '../notas/notes.dart';
import '../perfil/profile.dart';

class MenuDrawer extends StatelessWidget {
  const MenuDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            decoration: BoxDecoration(color: Colors.pink[400]),
            child: Container(height: 60.0, child: Text('Inicio')),
          ),
          ListTile(
            leading: Icon(Icons.supervised_user_circle_sharp),
            title: Text('Perfil'),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => ProfilePage()));
            },
          ),
          ListTile(
            leading: Icon(Icons.supervised_user_circle_sharp),
            title: Text('Mis documentos'),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Documentos()));
            },
          ),
          ListTile(
            leading: Icon(Icons.supervised_user_circle_sharp),
            title: Text('Mis notas'),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => NotePage()));
            },
          ),
          Divider(),

          Container(margin: EdgeInsets.only(left: 10.0), child: Text('Ayuda')),

          //especialistas
          ListTile(
            leading: Icon(Icons.supervised_user_circle_sharp),
            title: Text('Especialistas'),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => SpecialistPage()));
            },
          ),

          Divider(),

          Container(
              margin: EdgeInsets.only(left: 10.0), child: Text('Sistema')),

          // configuracion
          ListTile(
            leading: Icon(Icons.supervised_user_circle_sharp),
            title: Text('Configuracion'),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => SettingsPage()));
            },
          ),

          ListTile(
            leading: Icon(Icons.supervised_user_circle_sharp),
            title: Text('Salir'),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
