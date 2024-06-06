import 'package:flutter/material.dart';

class BottomBarForNavigation extends StatefulWidget {
  const BottomBarForNavigation({super.key});

  @override
  State<BottomBarForNavigation> createState() => _BottomBarForNavigationState();
}

class _BottomBarForNavigationState extends State<BottomBarForNavigation> {
  int currentPageIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 81,
      child: ClipRRect(
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30), topRight: Radius.circular(30)),
        child: NavigationBar(
          backgroundColor: Colors.white,
          onDestinationSelected: (int index) {
            setState(() {
              currentPageIndex = index;
            });
          },
          indicatorColor: Colors.grey[200],
          elevation: 100,
          labelBehavior: NavigationDestinationLabelBehavior.onlyShowSelected,
          selectedIndex: currentPageIndex,
          destinations: [
            NavigationDestination(
              icon: Badge(
                child: Image(
                  image: AssetImage(
                      'assets/bottom_navigation_icons/icon_home.png'),
                ),
              ),
              label: '',
            ),
            NavigationDestination(
              icon: Badge(
                child: Image(
                  image: AssetImage(
                      'assets/bottom_navigation_icons/icon_location.png'),
                ),
              ),
              label: '',
            ),
            NavigationDestination(
              icon: Badge(
                child: Image(
                  image: AssetImage(
                      'assets/bottom_navigation_icons/icon_favorite.png'),
                ),
              ),
              label: '',
            ),
            NavigationDestination(
              icon: Badge(
                child: Image(
                  image: AssetImage(
                      'assets/bottom_navigation_icons/icon_read.png'),
                ),
              ),
              label: '',
            ),
          ],
        ),
      ),
    );
  }
}
