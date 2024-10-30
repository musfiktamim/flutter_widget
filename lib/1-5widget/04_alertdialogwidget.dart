import 'package:flutter/material.dart';

class Alertdialogwidget extends StatefulWidget {
  const Alertdialogwidget({super.key});

  @override
  State<Alertdialogwidget> createState() => _AlertdialogwidgetState();
}

class _AlertdialogwidgetState extends State<Alertdialogwidget> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        child: Text("show alert dialog"),
        onPressed: () {
          showDialog(
              context: context,
              builder: (context) => AlertDialog(
                    title: Text("Alert Dialog"),
                    actions: [
                      TextButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        child: Text("close"),
                      ),
                    ],
                    content: Text("hey whats app brother"),
                  ));
        },
      ),
    );
  }
}
