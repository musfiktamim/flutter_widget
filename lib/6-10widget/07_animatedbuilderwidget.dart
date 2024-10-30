import 'package:flutter/material.dart';
import 'dart:math';

class Animatedbuilderwidget extends StatefulWidget {
  const Animatedbuilderwidget({super.key});

  @override
  State<Animatedbuilderwidget> createState() => _AnimatedbuilderwidgetState();
}

class _AnimatedbuilderwidgetState extends State<Animatedbuilderwidget>
    with TickerProviderStateMixin {
  late final AnimationController _controller = AnimationController(
    duration: Duration(seconds: 10),
    vsync: this,
  )..repeat();

  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: AnimatedBuilder(
        animation: _controller,
        child: FlutterLogo(
          size: 100,
        ),
        builder: (BuildContext context, Widget? child) {
          return Transform.rotate(
            angle: _controller.value * 2.0 * pi,
            child: child,
          );
        },
      ),
    );
  }
}
