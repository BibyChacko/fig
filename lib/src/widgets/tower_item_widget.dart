import 'package:flutter/material.dart';

class TowerItemWidget extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return  Card(
      elevation: 4,
      shadowColor: Colors.red,
      child: Column(
        children: [
          Image.asset(
            "assets/images/tower.jpg",
            fit: BoxFit.fill,
            width: MediaQuery.of(context).size.width,
            height: 240,
          ),
          Text("Sam")
        ],
      ),
    );
  }

}