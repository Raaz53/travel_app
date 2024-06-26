import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:travel_application/contents/destination_content_widget.dart';
import 'package:travel_application/contents/reading_page_content.dart';

import 'package:travel_application/contents/home_content_widget.dart';
import 'package:travel_application/models/travelling_app.dart';
import 'package:travel_application/widget/top_bar_widget.dart';

import '../contents/favorite_content_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TravellingApp travellingApp = TravellingApp();
  int currentIndex = 0;
  bool isSelected = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Column(
        children: [
          currentIndex == 0 || currentIndex == 2
              ? const TopBarWidget()
              : const SizedBox(),
          Expanded(
            child: IndexedStack(
              index: currentIndex,
              children: const [
                HomeContentWidget(),
                DestinationContentWidget(),
                FavoriteContentWidget(),
                ReadingPageContent(),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: Theme(
        data: ThemeData(splashColor: Colors.transparent),
        child: BottomNavigationBar(
          backgroundColor: Colors.white,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          enableFeedback: false,
          onTap: (index) {
            setState(() {
              currentIndex = index;
            });
          },
          items: [
            _bottomNavigationBarItem(
                displayIcon: travellingApp.iconHome, index: 0),
            _bottomNavigationBarItem(
                displayIcon: travellingApp.iconLocation, index: 1),
            _bottomNavigationBarItem(
                displayIcon: travellingApp.iconFavorite, index: 2),
            _bottomNavigationBarItem(
                displayIcon: travellingApp.iconRead, index: 3),
          ],
        ),
      ),
    );
  }

  BottomNavigationBarItem _bottomNavigationBarItem(
      {required Image displayIcon, required int index}) {
    return BottomNavigationBarItem(
        label: '',
        icon: Container(
          height: 50,
          child: currentIndex == index
              ? Material(
                  elevation: 10.0,
                  borderRadius: BorderRadius.all(Radius.circular(50)),
                  child: displayIcon,
                )
              : displayIcon,
        ));
  }
}
