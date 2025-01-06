import 'package:conocete/ui/pages/widgets/NavBar.dart';
import 'package:conocete/ui/pages/widgets/BotonApp.dart';
import 'package:flutter/material.dart';
import '../tipoUsr/TipoUsr.dart';
import 'package:conocete/ui/pages/widgets/cust_appbar.dart';

class LogReg extends StatefulWidget {
  const LogReg({super.key});

  @override
  LogRegState createState() => LogRegState();
}

class LogRegState extends State<LogReg> {
  bool showLogState = true;

  void toggleState() {
    setState(() {
      showLogState = !showLogState;
    });
  }

  @override
  Widget build(BuildContext context) {
    return showLogState
        ? LogState(toggleState: toggleState)
        : RegState(toggleState: toggleState);
  }
}

class LogState extends StatelessWidget {
  final VoidCallback toggleState;

  const LogState({required this.toggleState, super.key});

  @override
  Widget build(BuildContext context) {
    final altura = MediaQuery.of(context).size.height;
    final anchura = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: Custom_appbar(),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Center(
              child: Image(
                image: AssetImage('assets/logo_app.png'),
                height: altura * 0.25,
              ),
            ),
            Stack(
              children: [
                SizedBox(
                  height: altura * 0.65,
                  width: anchura,
                  child: const DecoratedBox(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(60),
                        topRight: Radius.circular(60),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: anchura * 0.05,
                  top: altura * 0.03,
                  child: Text(
                    "Iniciar sesión",
                    textScaler: TextScaler.linear(anchura * 0.006),
                    style: TextStyle(decoration: TextDecoration.underline,),
                  ),
                ),
                Positioned(
                  right: -anchura * 0.05,
                  top: altura * 0.03,
                  child: SizedBox(
                    width: anchura * 0.5,
                    child: GestureDetector(
                      onTap: toggleState,
                      child: Text(
                        "Registrarse",
                        textScaler: TextScaler.linear(anchura * 0.006),
                      ),
                    ),
                  ),
                ),
                //hasta aqui los dos textos
                Positioned(
                  left: anchura * 0.15,
                  child: Column(
                    children: [
                      SizedBox(
                        height: altura * 0.2,
                        width: anchura * 0.7,
                      ),
                      SizedBox(
                        height: altura * 0.10,
                        width: anchura * 0.7,
                        child: TextField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(borderSide: BorderSide(width: 5)),
                            labelText: 'Usuario',
                          ),
                        ),
                      ),
                      SizedBox(
                        height: altura * 0.10,
                        width: anchura * 0.7,
                        child: TextField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(borderSide: BorderSide(width: 5)),
                            labelText: 'Contraseña',
                          ),
                        ),
                      ),
                      SizedBox(
                        height: altura * 0.10,
                        width: anchura * 0.7,
                        child: TextButton(
                          onPressed: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => OlvidoState(),
                              ),
                            );
                          },
                          child: Text("Olvido la contraseña?",
                              style: TextStyle(color: Colors.black)),
                        ),
                      ),
                      SizedBox(
                        child: BotonNav(
                            etiqueta: "Iniciar Sesion",
                            sig: Navbar(),
                            hacer: () {}),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ],
        ),
      ),
      backgroundColor: Theme.of(context).colorScheme.primary,
    );
  }
}

class RegState extends StatelessWidget {
  final VoidCallback toggleState;

  const RegState({required this.toggleState, super.key});

  @override
  Widget build(BuildContext context) {
    final altura = MediaQuery.of(context).size.height;
    final anchura = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: Custom_appbar(),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Center(
              child: Image(
                image: AssetImage('assets/logo_app.png'),
                height: altura * 0.25,
              ),
            ),
            Stack(
              children: [
                SizedBox(
                  height: altura * 0.65,
                  width: anchura,
                  child: const DecoratedBox(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(60),
                        topRight: Radius.circular(60),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: anchura * 0.05,
                  top: altura * 0.03,
                  child: GestureDetector(
                    onTap: toggleState,
                    child: Text(
                      "Iniciar sesión",
                      textScaler: TextScaler.linear(anchura * 0.006),
                    ),
                  ),
                ),
                Positioned(
                  right: -anchura * 0.05,
                  top: altura * 0.03,
                  child: SizedBox(
                    width: anchura * 0.5,
                    child: Text(
                      "Registrarse",
                      textScaler: TextScaler.linear(anchura * 0.006),
                      style: TextStyle(decoration: TextDecoration.underline),
                    ),
                  ),
                ),
                Positioned(
                  left: anchura * 0.15,
                  child: Column(
                    children: [
                      SizedBox(
                        height: altura * 0.2,
                      ),
                      SizedBox(
                        height: altura * 0.10,
                        width: anchura * 0.7,
                        child: TextField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(borderSide: BorderSide(width: 5)),
                            labelText: 'Correo',
                          ),
                        ),
                      ),
                      SizedBox(
                        height: altura * 0.10,
                        width: anchura * 0.7,
                        child: TextField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(borderSide: BorderSide(width: 5)),
                            labelText: 'Contraseña',
                          ),
                        ),
                      ),
                      SizedBox(
                        height: altura * 0.10,
                        width: anchura * 0.7,
                        child: TextField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(borderSide: BorderSide(width: 5)),
                            labelText: 'Confirmar Contraseña',
                          ),
                        ),
                      ),
                      BotonNav(
                          etiqueta: "Registrarse",
                          sig: TipoUsr(),
                          hacer: () {}),
                    ],
                  ),
                )
              ],
            ),
          ],
        ),
      ),
      backgroundColor: Theme.of(context).colorScheme.primary,
    );
  }
}

class OlvidoState extends StatelessWidget {
  const OlvidoState({super.key});



  @override
  Widget build(BuildContext context) {

    final altura = MediaQuery.of(context).size.height;
    final anchura = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: Custom_appbar(),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Center(
              child: Image(
                image: AssetImage('assets/logo_app.png'),
                height: altura * 0.25,
              ),
            ),
            Stack(
              children: [
                SizedBox(
                  height: altura * 0.65,
                  width: anchura,
                  child: const DecoratedBox(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(60),
                        topRight: Radius.circular(60),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  child: Column(
                    children: [

                      SizedBox(

                        child: Text(
                          "Olvido de contraseña",
                          textScaler: TextScaler.linear(anchura * 0.004),


                        ),
                      ),
                      SizedBox(
                        height: altura * 0.10,
                        width: anchura * 0.7,
                        child: TextField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(borderSide: BorderSide(width: 5)),
                            labelText: 'Correo',
                          ),
                        ),
                      ),
                      BotonNav(
                          etiqueta: "Registrarse",
                          sig: LogReg(),
                          hacer: () {}),
                    ],
                  ),
                )
              ],
            ),
          ],
        ),
      ),
      backgroundColor: Theme.of(context).colorScheme.primary,
    );

  }
}
