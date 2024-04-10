import 'package:flutter/material.dart';
import 'package:montiel_uii_act1_0973/pantallas0973/panel0973/panel_pantallas0973.dart';

void main() => runApp(const MiAppboletos());

class MiAppboletos extends StatelessWidget {
  const MiAppboletos({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Montiel Boletos0973',
      theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.cyan),
          useMaterial3: true),
      home: const PanelPantalla0973(),
    );
  }
}
