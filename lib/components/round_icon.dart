import 'package:flutter/material.dart';

class RoundedIconButton extends StatelessWidget {
  const RoundedIconButton(
      {super.key, required this.icon, required this.baktygul});

  final IconData icon;
  final VoidCallback baktygul;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: baktygul,
      elevation: 10.0,
      constraints: const BoxConstraints.tightFor(width: 56.0, height: 56.0),
      shape: const CircleBorder(),
      fillColor: const Color.fromARGB(255, 159, 168, 214),
      child: Icon(icon),
    );
  }
}
