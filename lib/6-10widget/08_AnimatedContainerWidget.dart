import 'package:flutter/material.dart';

class Animatedcontainerwidget extends StatefulWidget {
  const Animatedcontainerwidget({super.key});

  @override
  State<Animatedcontainerwidget> createState() =>
      _AnimatedcontainerwidgetState();
}

class _AnimatedcontainerwidgetState extends State<Animatedcontainerwidget> {
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
        child: AnimatedContainer(
          width: selected ? 200 : 100,
          height: selected ? 100 : 200,
          color: selected ? Colors.blueGrey : Colors.white,
          duration: Duration(seconds: 1),
          curve: Curves.fastOutSlowIn,
          alignment: selected ? Alignment.center : Alignment.topCenter,
          child: FlutterLogo(
            size: 50,
          ),
        ),
      ),
    );
  }
}
