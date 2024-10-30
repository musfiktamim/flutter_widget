import 'package:flutter/material.dart';

class Aboutdialogwithbutton extends StatefulWidget {
  const Aboutdialogwithbutton({super.key});

  @override
  State<Aboutdialogwithbutton> createState() => _AboutdialogwithbuttonState();
}

class _AboutdialogwithbuttonState extends State<Aboutdialogwithbutton> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        child: Text("show about dialog"),
        onPressed: () {
          showDialog(
              context: context,
              builder: (context) => const AboutDialog(
                    applicationIcon: FlutterLogo(),
                    applicationLegalese: "aplication legalese",
                    applicationName: "MyApps",
                    applicationVersion: "version 1.0.1",
                    children: [
                      Text("this is created by musfik"),
                    ],
                  ));
        },
      ),
    );
  }
}
