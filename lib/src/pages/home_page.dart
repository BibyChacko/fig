// We are going to design  a home page
// Scaffold Widget

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:my_fig_tree/src/fragments/home_fragment.dart';
import 'package:my_fig_tree/src/fragments/profile_fragment.dart';

import '../fragments/cart_fragment.dart';

class HomePage extends StatefulWidget {

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectedIndex = 0;
  List<Widget> fragments = [HomeFragment(),CartFragment(),ProfileFragment()];

  @override
  Widget build(BuildContext context) {
    // This method is responsible to show the UI
    return Scaffold(
      appBar: AppBar(
        title: Text("M Fig Tree App"),
        leading: Icon(Icons.menu_outlined),
        actions: [
          FaIcon(FontAwesomeIcons.angellist),
          SizedBox(width: 16,),
          Icon(Icons.account_balance_wallet_outlined),
          SizedBox(width: 32,),
        ],
        elevation: 0,
      ),
      body: SafeArea(
          child: SingleChildScrollView(
              child: fragments[selectedIndex]
          )
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedIndex,
        showUnselectedLabels: true,
        type: BottomNavigationBarType.fixed,
        unselectedLabelStyle: TextStyle(color: Colors.grey),
        selectedLabelStyle: TextStyle(color: Colors.red),
        onTap: (value){
          print(value);
            setState((){
              selectedIndex = value;
            });
        },
        backgroundColor: Colors.orangeAccent,
        items: [
          BottomNavigationBarItem(
            icon: FaIcon(FontAwesomeIcons.homeAlt),
            label: "Home",
          ),
          BottomNavigationBarItem(
              icon: FaIcon(FontAwesomeIcons.cartShopping),
              label: "Cart",
          ),
          BottomNavigationBarItem(
              icon: FaIcon(FontAwesomeIcons.person),
              label: "Profile"
          ),
        ],
      ),
    );
  }


}
