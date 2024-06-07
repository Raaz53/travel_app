import 'package:flutter/material.dart';
import 'package:travel_application/contents/favorite_content_widget.dart';
import 'package:travel_application/widget/top_bar_widget.dart';

import '../models/travelling_app.dart';
import '../widget/bottom_bar_for_navigation.dart';

class FavoritePage extends StatefulWidget {
  const FavoritePage({super.key});

  @override
  State<FavoritePage> createState() => _FavoritePageState();
}

class _FavoritePageState extends State<FavoritePage> {
  TravellingApp travellingApp = TravellingApp();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TopBarWidget(),
          Padding(
              padding: EdgeInsets.all(30),
              child: travellingApp.contentTopic('Favorite')),
          Expanded(child: FavoriteContentWidget()),
        ],
      ),
    );
  }
}
