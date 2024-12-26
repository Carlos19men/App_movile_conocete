import 'package:flutter/material.dart';
import '../TuSalud/tuSalud.dart';
import '../agenda/agenda.dart';
import '../home/homePage.dart';

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
      appBar: AppBar(
        title: Center(child: Text('Conócete')),
        backgroundColor: Color.fromARGB(255, 255, 167, 221),
      ),
      body: paginas[indexTap],
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
