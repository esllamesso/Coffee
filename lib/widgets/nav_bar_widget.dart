import 'package:flutter/material.dart';
import 'package:flutterfirst/core/colors_manager.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

class NavBarWidget extends StatelessWidget {
  final int currentIndex;
  final Function(int) onTap;

  const NavBarWidget({
    Key? key,
    required this.currentIndex,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SalomonBottomBar(
      currentIndex: currentIndex,
      onTap: onTap,
      items: [
        SalomonBottomBarItem(
          icon: Icon(Icons.home),
          title: Text("Home"),
          selectedColor: ColorsManager.goldtrTextColor,
        ),
        SalomonBottomBarItem(
          icon: Icon(Icons.favorite_border),
          title: Text("Likes"),
          selectedColor: ColorsManager.goldtrTextColor,
        ),
        SalomonBottomBarItem(
          icon: Icon(Icons.search),
          title: Text("Search"),
          selectedColor: ColorsManager.goldtrTextColor,
        ),
        SalomonBottomBarItem(
          icon: Icon(Icons.person),
          title: Text("Profile"),
          selectedColor: ColorsManager.goldtrTextColor,
        ),
      ],
    );
  }
}
