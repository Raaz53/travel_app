import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travel_application/styles/font_styling.dart';
import 'package:travel_application/widget/carousel_image_widget.dart';
import 'package:travel_application/widget/home_info_container_widget.dart';

class HomeContentWidget extends StatefulWidget {
  const HomeContentWidget({super.key});

  @override
  State<HomeContentWidget> createState() => _HomeContentWidgetState();
}

class _HomeContentWidgetState extends State<HomeContentWidget> {
  FontStyling fontStyling = FontStyling();
  Image place1 = const Image(
    image: AssetImage('assets/destinations/dubai.jpg'),
  );
  Image place2 = const Image(
    image: AssetImage('assets/destinations/phuket.jpg'),
  );
  Image place3 = const Image(
    image: AssetImage('assets/destinations/tokyo.jpg'),
  );

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 30),
          child: fontStyling.contentTopic("Explore"),
        ),
        CarouselSlider(items: [
          CarouselImageWidget(
              destination: place1, country: 'UAE', location: 'Dubai,UAE'),
          CarouselImageWidget(
              destination: place2,
              country: 'Thailand',
              location: 'Phuket,Thailand'),
          CarouselImageWidget(
              destination: place3, country: 'Japan', location: 'Tokyo,Japan'),
        ], options: CarouselOptions(aspectRatio: 2.6, viewportFraction: 0.65)),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            buildIndicator(isActive: false),
            buildIndicator(isActive: true),
            buildIndicator(isActive: false)
          ],
        ),
        Padding(
          padding: EdgeInsets.all(30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              fontStyling.contentTopic('Travel News'),
              SizedBox(
                height: 20,
              ),
              HomeInfoContainerWidget(
                  topic: 'Coronavirus (COVID-19) travel restrictions',
                  description:
                      "Foreign nationals categorized below are denied permission to enter Japan for the time being, unless there are exceptional circumstances. Foreign nationals who have stayed in any of the areas listed in the following table within 14 days prior to the application for landing."),
              SizedBox(
                height: 20,
              ),
              HomeInfoContainerWidget(
                  topic: 'Coronavirus Outbreak',
                  description:
                      "The outbreak of the coronavirus is having a big impact on tourism in Japan. The country's borders remain closed to international tourists, and there are no signs that the borders will be opened to considerable numbers of tourists in the near future."),
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
