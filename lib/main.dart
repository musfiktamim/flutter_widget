import 'package:flutter/material.dart';
import 'package:flutter_widgets_215/1-5widget/01_Aboutdialogwithbutton.dart';
import 'package:flutter_widgets_215/1-5widget/02_aboutlisttilewidgt.dart';
import 'package:flutter_widgets_215/1-5widget/03_absarbpointerwidget.dart';
import 'package:flutter_widgets_215/1-5widget/04_alertdialogwidget.dart';
import 'package:flutter_widgets_215/1-5widget/05_alignmentwidget.dart';
import 'package:flutter_widgets_215/6-10widget/06_animatedalignmentwidget.dart';
import 'package:flutter_widgets_215/6-10widget/07_animatedbuilderwidget.dart';
import 'package:flutter_widgets_215/6-10widget/08_AnimatedContainerWidget.dart';
import 'package:flutter_widgets_215/6-10widget/09_AnimatedCrossFadeWidget.dart';
import 'package:flutter_widgets_215/6-10widget/10_AnimatedDefaultTextStylewidget.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(brightness: Brightness.dark),
      home: HomeActivity(),
    );
  }
}

class HomeActivity extends StatelessWidget {
  const HomeActivity({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: Text("Widget App"),
        centerTitle: true,
      ),
      body: Animateddefaulttextstylewidget(),
    ));
  }
}
