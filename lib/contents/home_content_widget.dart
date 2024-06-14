import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:travel_application/widget/stacked_image_widget.dart';
import 'package:travel_application/widget/home_info_container_widget.dart';

import '../models/destination_model.dart';
import '../models/travelling_app.dart';

class HomeContentWidget extends StatefulWidget {
  const HomeContentWidget(
      {super.key, required this.places, required this.favoriteList});

  final List<DestinationModel> places;
  final List<DestinationModel> favoriteList;

  @override
  State<HomeContentWidget> createState() => _HomeContentWidgetState();
}

class _HomeContentWidgetState extends State<HomeContentWidget> {
  TravellingApp travelApp = TravellingApp();

  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: travelApp.contentTopic("Explore"),
        ),
        CarouselSlider(
            items: List.generate(
                widget.places.length,
                (index) => StackedImageWidget(
                    favoriteList: widget.favoriteList,
                    destinationModel: widget.places[index],
                    isExplore: true)),
            options: CarouselOptions(
                aspectRatio: 2.6,
                viewportFraction: 0.58,
                onPageChanged: (index, reason) {
                  setState(() {
                    _currentIndex = index;
                  });
                },
                enlargeCenterPage: true)),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(3, (index) {
            return buildIndicator(isActive: _currentIndex == index);
          }),
        ),
        Padding(
          padding: const EdgeInsets.all(30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              travelApp.contentTopic('Travel News'),
              const SizedBox(
                height: 20,
              ),
              HomeInfoContainerWidget(
                  topic: travelApp.topic1, description: travelApp.description1),
              const SizedBox(
                height: 20,
              ),
              HomeInfoContainerWidget(
                topic: travelApp.topic2,
                description: travelApp.description2,
              )
            ],
          ),
        )
      ],
    );
  }

  Widget buildIndicator({required bool isActive}) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 4),
      width: isActive ? 12 : 8,
      height: isActive ? 12 : 8,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: isActive ? Colors.grey[700] : Colors.grey[400],
      ),
    );
  }
}
