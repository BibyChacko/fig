

import 'package:flutter/material.dart';
import 'package:my_fig_tree/src/widgets/tower_item_widget.dart';

class HomeFragment extends StatefulWidget {
  @override
  _HomeFragmentState createState() => _HomeFragmentState();
}

class _HomeFragmentState extends State<HomeFragment>{

  @override
  Widget build(BuildContext context){
    return Column(
      children: [
          TowerItemWidget(),
          TowerItemWidget(),
          TowerItemWidget(),
          TowerItemWidget(),
      ],
    );
  }

}