import 'package:flutter/material.dart';
import 'package:travel_application/widget/bottom_navigation_bar.dart';
import 'package:travel_application/widget/home_content_widget.dart';
import 'package:travel_application/widget/top_bar_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          TopBarWidget(),
          HomeContentWidget(),
          BottomBarForNavigation()
        ],
      ),
    );
  }
}
