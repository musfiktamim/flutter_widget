import 'package:flutter/material.dart';

class Animatedcrossfadewidget extends StatefulWidget {
  const Animatedcrossfadewidget({super.key});

  @override
  State<Animatedcrossfadewidget> createState() =>
      _AnimatedcrossfadewidgetState();
}

class _AnimatedcrossfadewidgetState extends State<Animatedcrossfadewidget> {
  bool _bool = true;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(
          width: double.infinity,
          height: 100,
        ),
        TextButton(
            onPressed: () {
              setState(() {
                _bool = !_bool;
              });
            },
            child: Text(
              "switch",
              style: TextStyle(
                color: Colors.white,
              ),
            )),
        AnimatedCrossFade(
          firstChild: Text("hello"),
          secondChild: Text("world"),
          crossFadeState:
              _bool ? CrossFadeState.showFirst : CrossFadeState.showSecond,
          duration: Duration(seconds: 1),
        )
      ],
    );
  }
}
