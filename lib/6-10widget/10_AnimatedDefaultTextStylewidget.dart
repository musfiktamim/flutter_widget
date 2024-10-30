import 'package:flutter/material.dart';

class Animateddefaulttextstylewidget extends StatefulWidget {
  const Animateddefaulttextstylewidget({super.key});

  @override
  State<Animateddefaulttextstylewidget> createState() =>
      _AnimateddefaulttextstylewidgetState();
}

class _AnimateddefaulttextstylewidgetState
    extends State<Animateddefaulttextstylewidget> {
  bool _first = true;
  double _fontsize = 60;
  Color _color = Colors.blue;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        SizedBox(
          height: 120,
          child: AnimatedDefaultTextStyle(
              child: Text("Flutter"),
              style: TextStyle(
                fontSize: _fontsize,
                color: _color,
                fontWeight: FontWeight.bold,
              ),
              duration: Duration(
                seconds: 1,
              ),
              curve: Curves.fastOutSlowIn),
        ),
        TextButton(
          onPressed: () {
            setState(() {
              _fontsize = _first ? 90 : 60;
              _color = _first ? Colors.blue : Colors.red;
              _first = !_first;
            });
          },
          child: Text(
            "switch",
            style: TextStyle(
              color: Colors.red,
            ),
          ),
        )
      ],
    );
  }
}
