import 'package:flutter/material.dart';

class MyPreferencePage extends StatefulWidget{
   @override
   _MyPreferencePageState createState() => _MyPreferencePageState();
}


class _MyPreferencePageState extends State<MyPreferencePage>{
  @override
  Widget build(BuildContext context){
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text("My Preference"),
          bottom: TabBar(
            tabs: [
              Tab(
                icon: Icon(Icons.file_download),
                text: "Chat",
              ),
              Tab(
                icon: Icon(Icons.file_download),
                text: "Camera",
              ),
              Tab(
                icon: Icon(Icons.file_download),
                text: "Downlaods",
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Text("My Preference"),
            Text("My Contact"),
            Text("My Downloads")
          ],
        )
      ),
    );
  }
}