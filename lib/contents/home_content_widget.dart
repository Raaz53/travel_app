import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:travel_application/widget/stacked_image_widget.dart';
import 'package:travel_application/widget/home_info_container_widget.dart';

import '../models/travelling_app.dart';

class HomeContentWidget extends StatefulWidget {
  const HomeContentWidget({super.key});

  @override
  State<HomeContentWidget> createState() => _HomeContentWidgetState();
}

class _HomeContentWidgetState extends State<HomeContentWidget> {
  TravellingApp travelApp = TravellingApp();

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
            items: [
              StackedImageWidget(
                destinationPicture: Image.asset(
                  travelApp.dubaiImage,
                  fit: BoxFit.cover,
                ),
                country: travelApp.destination1Topic,
                isExplore: true,
              ),
              StackedImageWidget(
                destinationPicture: Image.asset(
                  travelApp.phuketImage,
                  fit: BoxFit.cover,
                ), //travelApp.place2,
                country: travelApp.destination2Topic,
                isExplore: true,
              ),
              StackedImageWidget(
                destinationPicture: Image.asset(
                  travelApp.tokyoImage,
                  fit: BoxFit.cover,
                ), //travelApp.place3,
                country: travelApp.destination3Topic,
                isExplore: true,
              ),
            ],
            options: CarouselOptions(
                aspectRatio: 2.6,
                viewportFraction: 0.58,
                enlargeCenterPage: true)),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            buildIndicator(isActive: false),
            buildIndicator(isActive: true),
            buildIndicator(isActive: false)
          ],
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
      margin: EdgeInsets.symmetric(horizontal: 4),
      width: isActive ? 12 : 8,
      height: isActive ? 12 : 8,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: isActive ? Colors.grey[700] : Colors.grey[400],
      ),
    );
  }
}
