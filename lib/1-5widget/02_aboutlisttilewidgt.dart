import 'package:flutter/material.dart';

class Aboutlisttilewidgt extends StatefulWidget {
  const Aboutlisttilewidgt({super.key});

  @override
  State<Aboutlisttilewidgt> createState() => _AboutlisttilewidgtState();
}

class _AboutlisttilewidgtState extends State<Aboutlisttilewidgt> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: AboutListTile(
        icon: Icon(Icons.info),
        applicationIcon: FlutterLogo(),
        applicationLegalese: "legalese",
        applicationName: "Widget App",
        applicationVersion: "version 1.0.0",
        aboutBoxChildren: [
          Text("This is created by Musfik"),
        ],
      ),
    );
  }
}
