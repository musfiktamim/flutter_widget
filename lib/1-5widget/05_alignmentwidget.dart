import 'package:flutter/material.dart';

class Alignmentwidget extends StatefulWidget {
  const Alignmentwidget({super.key});

  @override
  State<Alignmentwidget> createState() => _AlignmentwidgetState();
}

class _AlignmentwidgetState extends State<Alignmentwidget> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 120,
        width: double.infinity,
        color: Colors.blueGrey,
        child: Align(
          alignment: Alignment.topRight,
          child: FlutterLogo(
            size: 50,
          ),
        ),
      ),
    );
  }
}
