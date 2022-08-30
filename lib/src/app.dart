// Everything in flutter is a widget --
import 'package:flutter/material.dart';
import 'pages/home_page.dart';

// Now "FigTreeApp" is a widget

class FigTreeApp extends StatelessWidget{

  // Build is the function which return the widget(UI component)
  @override // -- Annotation
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "My Figtree App",
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: HomePage(),
    );
  }

}