import "package:flutter/material.dart";
import 'package:google_nav_bar/google_nav_bar.dart';

class bottom_nav_bar extends StatelessWidget {
  void Function(int)? onTabChange;
  bottom_nav_bar({super.key, required this.onTabChange,});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding:EdgeInsets.symmetric(vertical:15),
      child: GNav(
        backgroundColor:Color.fromARGB(255, 250, 186, 91),
        color: Color.fromARGB(255, 252, 252, 252),
        activeColor: Colors.orange,
        tabActiveBorder: Border.all(color: Colors.white),
        tabBackgroundColor: Color.fromARGB(255, 249, 249, 249),
        mainAxisAlignment: MainAxisAlignment.center,
        tabBorderRadius: 30,
        onTabChange: (value) => onTabChange!(value),
        tabs: const[
          GButton (
            icon: Icons.home,
            text: 'Home',
            ),

            GButton(
            icon: Icons.play_arrow_outlined,
            text: 'watchlist',
            )
        ],
        ),
    );
  }
}