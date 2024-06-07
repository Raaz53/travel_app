import 'package:flutter/material.dart';
import 'package:travel_application/screen/destination_page.dart';
import 'package:travel_application/screen/favorite_page.dart';
import 'package:travel_application/screen/home_page.dart';
import 'package:travel_application/screen/reading_page.dart';

class BottomBarForNavigation extends StatefulWidget {
  const BottomBarForNavigation({super.key});

  @override
  State<BottomBarForNavigation> createState() => _BottomBarForNavigationState();
}

class _BottomBarForNavigationState extends State<BottomBarForNavigation> {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: const [
          BottomNavigationBarItem(
              label: '',
              icon: Image(
                image:
                    AssetImage('assets/bottom_navigation_icons/icon_home.png'),
              )),
          BottomNavigationBarItem(
              label: '',
              icon: Image(
                image: AssetImage(
                    'assets/bottom_navigation_icons/icon_location.png'),
              )),
          BottomNavigationBarItem(
              label: '',
              icon: Image(
                image: AssetImage(
                    'assets/bottom_navigation_icons/icon_favorite.png'),
              )),
          BottomNavigationBarItem(
              label: '',
              icon: Image(
                image:
                    AssetImage('assets/bottom_navigation_icons/icon_read.png'),
              )),
        ]);
  }
}
