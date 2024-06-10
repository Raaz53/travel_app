import 'package:flutter/material.dart';
import 'package:travel_application/widget/stacked_image_widget.dart';

import '../models/travelling_app.dart';

class FavoriteContentWidget extends StatefulWidget {
  const FavoriteContentWidget({super.key});

  @override
  State<FavoriteContentWidget> createState() => _FavoriteContentWidgetState();
}

class _FavoriteContentWidgetState extends State<FavoriteContentWidget> {
  TravellingApp travellingApp = TravellingApp();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20),
            child: travellingApp.contentTopic('Favorite'),
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  StackedImageWidget(
                      destinationPicture: travellingApp.place1,
                      country: travellingApp.destination1Topic,
                      isExplore: false),
                  const SizedBox(
                    height: 30,
                  ),
                  StackedImageWidget(
                      destinationPicture: travellingApp.place3,
                      country: travellingApp.destination3Topic,
                      isExplore: false),
                  const SizedBox(
                    height: 30,
                  ),
                  StackedImageWidget(
                      destinationPicture: travellingApp.place3,
                      country: travellingApp.destination3Topic,
                      isExplore: false),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
