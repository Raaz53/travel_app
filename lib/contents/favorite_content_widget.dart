import 'package:flutter/material.dart';
import 'package:travel_application/widget/stacked_image_widget.dart';

import '../models/destination_model.dart';
import '../models/travelling_app.dart';

class FavoriteContentWidget extends StatefulWidget {
  const FavoriteContentWidget({super.key, required this.favoriteList});

  final List<DestinationModel> favoriteList;

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
              child: ListView.builder(
                  itemCount: widget.favoriteList.length,
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return StackedImageWidget(
                        isExplore: false,
                        destinationModel: widget.favoriteList[index]);
                  })),
        ],
      ),
    );
  }
}
