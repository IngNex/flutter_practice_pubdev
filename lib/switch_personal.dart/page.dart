import 'package:flutter/material.dart';
import 'package:flutter_practice_navigationbar/switch_personal.dart/switch.dart';
import 'package:flutter_practice_navigationbar/switch_personal.dart/switch_ii.dart';
import 'package:flutter_practice_navigationbar/switch_personal.dart/switch_prov.dart';

class SwitchPage extends StatelessWidget {
  const SwitchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Custom Switch Example')),
        body: Center(
          child: CustomSwitchProv(
            // value: true,
            // onChanged: (value) {
            //   // Aquí puedes manejar el cambio de valor del switch
            //   print("El valor del switch cambió a: $value");
            // },
          ),
        ),
      );
  }
}