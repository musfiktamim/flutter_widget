import 'package:flutter/material.dart';

class Animatedalignmentwidget extends StatefulWidget {
  const Animatedalignmentwidget({super.key});

  @override
  State<Animatedalignmentwidget> createState() =>
      _AnimatedalignmentwidgetState();
}

class _AnimatedalignmentwidgetState extends State<Animatedalignmentwidget> {
  bool selected = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selected = !selected;
        });
      },
      child: Center(
        child: Container(
          height: 120,
          width: double.infinity,
          color: Colors.blueGrey,
          child: AnimatedAlign(
            child: FlutterLogo(
              size: 50,
            ),
            alignment: selected ? Alignment.topLeft : Alignment.topRight,
            duration: Duration(seconds: 1),
            curve: Curves.fastOutSlowIn,
          ),
        ),
      ),
    );
  }
}
