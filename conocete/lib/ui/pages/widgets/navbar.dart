import 'package:flutter/material.dart';
import '../TuSalud/tu_salud.dart';
import '../agenda/agenda.dart';
import '../home/homePage.dart';
import 'menu_drawer.dart';
import 'body_margin.dart';
import 'cust_appbar.dart';

class Navbar extends StatefulWidget {
  const Navbar({super.key});

  @override
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
      appBar: CustomAppbar(),

      endDrawer: MenuDrawer(),
      //cuerpo
      body: Bodymargin(paginas[indexTap]),

      //barra inferior de navegacion
      bottomNavigationBar: Theme(
          data: Theme.of(context).copyWith(
              canvasColor: Theme.of(context).colorScheme.tertiary,
              primaryColor: Theme.of(context).colorScheme.primary,),
          child: BottomNavigationBar(selectedItemColor: Theme.of(context).colorScheme.error,
              onTap: onTapTapped,
              currentIndex: indexTap,
              items: [
                BottomNavigationBarItem(
                    icon: Icon(Icons.home,color: Theme.of(context).colorScheme.onPrimary,), label: 'Inicio',activeIcon:Icon(Icons.home_outlined,color: Theme.of(context).colorScheme.error,),),
                BottomNavigationBarItem(
                    icon: Icon(Icons.add_a_photo,color: Theme.of(context).colorScheme.onPrimary,), label: 'Agenda',activeIcon:Icon(Icons.add_a_photo_outlined,color: Theme.of(context).colorScheme.error,) ),
                BottomNavigationBarItem(
                    icon: Icon(Icons.health_and_safety,color: Theme.of(context).colorScheme.onPrimary,), label: 'Tu salud',activeIcon:Icon(Icons.health_and_safety_outlined,color: Theme.of(context).colorScheme.error,),)
              ])),
    );
  }
}
