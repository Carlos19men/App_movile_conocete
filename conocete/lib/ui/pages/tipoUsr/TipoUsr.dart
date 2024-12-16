import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';


class TipoUsr extends StatelessWidget {
  const TipoUsr({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.primary,
        title: const Center(
          child: Text("Conócete"),
        ),
        titleTextStyle: Theme.of(context).textTheme.headlineLarge,
      ),
      body: Column(
        children: [
          Text("Con que tipo de usuario te identificas?"),
          Center(
            child: SvgPicture.asset('assets/donor_persona_brand_crop.png',width: 100,height: 100,),
          )





        ],
      ),
    );
  }
}
