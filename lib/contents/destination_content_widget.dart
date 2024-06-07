import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:travel_application/widget/carousel_destination_widget.dart';

import '../models/travelling_app.dart';

class DestinationContentWidget extends StatefulWidget {
  const DestinationContentWidget({super.key});

  @override
  State<DestinationContentWidget> createState() =>
      _DestinationContentWidgetState();
}

class _DestinationContentWidgetState extends State<DestinationContentWidget> {
  TravellingApp travellingApp = TravellingApp();
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return CarouselDestinationWidget(
      screenHeight: height,
      screenWidth: width,
      destinationTopic: travellingApp.destination1Topic,
      destinationDescription: travellingApp.destination1Info,
      backgroundImage: travellingApp.place1,
    );
  }
}
