import 'package:flutter/material.dart';
import '../TuSalud/tuSalud.dart';
import '../agenda/agenda.dart';
import '../home/homePage.dart';
import '../configuracion/configuracion.dart';
import '../documentos/documentos.dart';
import '../especialistas/especialistas.dart';
import '../notas/notes.dart';
import '../perfil/profile.dart';

class Navbar extends StatefulWidget {
  State<StatefulWidget> createState() {
    return _Navbar();
  }
}

class _Navbar extends State<Navbar> {
  int indexTap = 0;

  List<Widget> paginas = [HomePage(), Agenda(), Tusalud()];

  void onTapTapped(int index) {
    setState(() {
      indexTap = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //Barra superior
      appBar: AppBar(
        title: Center(child: Text('Conócete')),
        backgroundColor: Color.fromARGB(255, 255, 167, 221),
      ),

      endDrawer: Drawer(
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
                    MaterialPageRoute(builder: (context) => DocumentPage()));
              },
            ),
            ListTile(
              leading: Icon(Icons.supervised_user_circle_sharp),
              title: Text('Mis notas'),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => NotePage()));
              },
            ),
            Divider(),

            Container(
                margin: EdgeInsets.only(left: 10.0), child: Text('Ayuda')),

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
      ),
      //cuerpo
      body: Container(
        margin: EdgeInsets.all(8.0),
        child: paginas[indexTap],
      ),

      //barra inferior de navegacion
      bottomNavigationBar: Theme(
          data: Theme.of(context).copyWith(
              canvasColor: Color.fromARGB(255, 255, 230, 246),
              primaryColor: Color.fromARGB(255, 255, 167, 221)),
          child: BottomNavigationBar(
              onTap: onTapTapped,
              currentIndex: indexTap,
              items: [
                BottomNavigationBarItem(
                    icon: Icon(Icons.home), label: 'Inicio'),
                BottomNavigationBarItem(
                    icon: Icon(Icons.add_a_photo), label: 'Agenda'),
                BottomNavigationBarItem(
                    icon: Icon(Icons.home), label: 'Tu salud')
              ])),
    );
  }
}
