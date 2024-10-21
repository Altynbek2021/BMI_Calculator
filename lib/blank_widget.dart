import 'package:flutter/material.dart';

class Cards extends StatelessWidget {
  const Cards({super.key, required this.colour, required this.blankchild});
  final Color colour;
  final Widget blankchild;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(20),
      decoration:
          BoxDecoration(color: colour, borderRadius: BorderRadius.circular(30)),
      child: blankchild,
    );
  }
}
