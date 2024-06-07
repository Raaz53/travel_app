import 'package:flutter/material.dart';
import 'package:travel_application/contents/destination_content_widget.dart';
import 'package:travel_application/contents/reading_page_content.dart';
import 'package:travel_application/screen/destination_page.dart';
import 'package:travel_application/screen/favorite_page.dart';
import 'package:travel_application/screen/reading_page.dart';
import 'package:travel_application/widget/bottom_bar_for_navigation.dart';
import 'package:travel_application/contents/home_content_widget.dart';
import 'package:travel_application/widget/top_bar_widget.dart';

import '../contents/favorite_content_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Column(
        children: [
          Expanded(
            child: IndexedStack(
              children: [
                HomeContentWidget(),
                DestinationContentWidget(),
                FavoriteContentWidget(),
                ReadingPageContent(),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomBarForNavigation(),
    );
  }
}
