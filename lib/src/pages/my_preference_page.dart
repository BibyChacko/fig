import 'package:flutter/material.dart';

class MyPreferencePage extends StatefulWidget{
   @override
   _MyPreferencePageState createState() => _MyPreferencePageState();
}


class _MyPreferencePageState extends State<MyPreferencePage>{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Center(child: Text("My Preference page")),
    );
  }
}