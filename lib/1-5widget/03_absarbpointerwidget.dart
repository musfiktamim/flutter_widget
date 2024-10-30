import 'package:flutter/material.dart';

class Absarbpointerwidget extends StatefulWidget {
  const Absarbpointerwidget({super.key});

  @override
  State<Absarbpointerwidget> createState() => _AbsarbpointerwidgetState();
}

class _AbsarbpointerwidgetState extends State<Absarbpointerwidget> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        alignment: AlignmentDirectional.center,
        children: [
          SizedBox(
            height: 100,
            width: 200,
            child: AbsorbPointer(
                child: ElevatedButton(
              onPressed: () {},
              child: null,
              style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
            )),
          ),
        ],
      ),
    );
  }
}
