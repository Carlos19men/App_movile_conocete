
import 'package:conocete/ui/pages/widgets/boton_app.dart';
import 'package:flutter/material.dart';
import '../../../data/login.dart';
import '../../../data/register.dart';

import 'package:conocete/ui/pages/widgets/cust_appbar.dart';

import '../widgets/boton_simple.dart';

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
        ? Log(toggleState: toggleState)
        : Reg(toggleState: toggleState);
  }
}

class Log extends StatefulWidget {
  final VoidCallback toggleState;

  const Log({required this.toggleState, super.key});

  @override
  _LogState createState() => _LogState();
}

class _LogState extends State<Log> {
  late TextEditingController emailController;
  late TextEditingController contrasenaController;

  @override
  void initState() {
    super.initState();
    emailController = TextEditingController();
    contrasenaController = TextEditingController();
  }

  @override
  void dispose() {
    emailController.dispose();
    contrasenaController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final altura = MediaQuery.of(context).size.height;
    final anchura = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: CustomAppbar(),
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
                      onTap: widget.toggleState,
                      child: Text(
                        "Registrarse",
                        textScaler: TextScaler.linear(anchura * 0.006),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: anchura * 0.15,
                  child: Column(
                    children: [
                      SizedBox(
                        height: altura * 0.1,
                        width: anchura * 0.7,
                      ),
                      SizedBox(
                        height: altura * 0.05,
                        width: anchura * 0.7,
                        child: Text("Correo", textScaler: TextScaler.linear(2)),
                      ),
                      SizedBox(
                        width: anchura * 0.7,
                        child: TextField(
                          controller: emailController,
                          decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                width: 5,
                                color: Theme.of(context).colorScheme.primary,
                              ),
                              borderRadius: BorderRadius.circular(45),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: altura * 0.05,
                        width: anchura * 0.7,
                        child: Text("Contraseña", textScaler: TextScaler.linear(2)),
                      ),
                      SizedBox(
                        width: anchura * 0.7,
                        child: TextField(
                          controller: contrasenaController,
                          decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                width: 5,
                                color: Theme.of(context).colorScheme.primary,
                              ),
                              borderRadius: BorderRadius.circular(45),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: altura * 0.15,
                        width: anchura * 0.7,
                        child: TextButton(
                          onPressed: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => Olvido(),
                              ),
                            );
                          },
                          child: Text(
                            "Olvido la contraseña?",
                            style: TextStyle(color: Colors.black),
                          ),
                        ),
                      ),
                      SizedBox(
                        child: BotonSimple(
                          etiqueta: "Iniciar Sesion",
                          hacer: () {
                            login(emailController, contrasenaController, context);
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      backgroundColor: Theme.of(context).colorScheme.primary,
    );
  }
}

class Reg extends StatefulWidget {
  final VoidCallback toggleState;

  const Reg({required this.toggleState, super.key});

  @override
  _RegState createState() => _RegState();
}

class _RegState extends State<Reg> {

  late TextEditingController emailController;
  late TextEditingController contrasenaController;
  late TextEditingController cont2Controller;

  @override
  void initState() {
    super.initState();
    emailController = TextEditingController();
    contrasenaController = TextEditingController();
    cont2Controller = TextEditingController();
  }

  @override
  void dispose() {
    emailController.dispose();
    contrasenaController.dispose();
    cont2Controller.dispose();
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    final altura = MediaQuery.of(context).size.height;
    final anchura = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: CustomAppbar(),
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
                    onTap: widget.toggleState,
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
                        height: altura * 0.1,
                      ),
                      SizedBox(
                        height: altura*0.05,
                        width: anchura * 0.7,
                        child: Text("Correo",textScaler: TextScaler.linear(2),),
                      ),
                      SizedBox(

                        width: anchura * 0.7,
                        child: TextField(controller:emailController,

                            decoration: InputDecoration(enabledBorder: OutlineInputBorder(borderSide: BorderSide(width: 5, color: Theme.of(context).colorScheme.primary),borderRadius:BorderRadius.circular(45)) ,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: altura*0.05,
                        width: anchura * 0.7,
                        child: Text("Contraseña",textScaler: TextScaler.linear(2),),
                      ),
                      SizedBox(

                        width: anchura * 0.7,
                        child: TextField(controller:contrasenaController,
                          decoration: InputDecoration(enabledBorder: OutlineInputBorder(borderSide: BorderSide(width: 5, color: Theme.of(context).colorScheme.primary),borderRadius:BorderRadius.circular(45)) ,

                          ),
                        ),
                      ),
                      SizedBox(
                        height: altura*0.05,
                        width: anchura * 0.7,
                        child: Text("Confirmar contraseña",textScaler: TextScaler.linear(2),),
                      ),
                      SizedBox(
                        height: altura*0.10,
                        width: anchura * 0.7,
                        child: TextField(controller:cont2Controller,
                          decoration: InputDecoration(enabledBorder: OutlineInputBorder(borderSide: BorderSide(width: 5, color: Theme.of(context).colorScheme.primary),borderRadius:BorderRadius.circular(45)) ,
                          ),
                        ),
                      ),
                      BotonSimple(
                          etiqueta: "Registrarse",
                          hacer: () {register(emailController,contrasenaController,cont2Controller,context);}),
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

class Olvido extends StatelessWidget {
  const Olvido({super.key});



  @override
  Widget build(BuildContext context) {

    final altura = MediaQuery.of(context).size.height;
    final anchura = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: CustomAppbar(),
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
                        height: altura * 0.1,
                        width: anchura * 0.7,
                        child: TextField(
                          decoration: InputDecoration(enabledBorder: OutlineInputBorder(borderSide: BorderSide(width: 5, color: Theme.of(context).colorScheme.primary),borderRadius:BorderRadius.circular(45)) ,
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
