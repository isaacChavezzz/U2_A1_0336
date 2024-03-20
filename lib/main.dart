import 'package:flutter/material.dart';
import 'package:chavez0336/pantallas0336/panel0336/panel_pantalla0336.dart';

void main() => runApp(MiAppTelcel0336());

class MiAppTelcel0336 extends StatelessWidget {
  const MiAppTelcel0336({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Isaac Chavez 0336",
      theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepOrange),
          useMaterial3: true),
      home: const PanelPantalla0336(),
    );
  }
}
