// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import '../models/travelling_app.dart';

class CarouselDestinationWidget extends StatefulWidget {
  const CarouselDestinationWidget(
      {super.key,
      required this.screenHeight,
      required this.screenWidth,
      required this.destinationTopic,
      required this.destinationDescription,
      required this.backgroundImage});
  final double screenHeight;
  final double screenWidth;

  final String destinationTopic;
  final String destinationDescription;

  final Image backgroundImage;

  @override
  State<CarouselDestinationWidget> createState() =>
      _CarouselDestinationWidgetState();
}

class _CarouselDestinationWidgetState extends State<CarouselDestinationWidget> {
  TravellingApp travellingApp = TravellingApp();

  bool isSelected = true;

  void changeState() {
    setState(() {
      isSelected = !isSelected;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/destinations/dubai.jpg'),
          fit: BoxFit.cover,
        ),
      ),
      padding: EdgeInsets.all(20),
      child: Column(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Flexible(
                    child:
                        travellingApp.destinationTopic(widget.destinationTopic),
                  ),
                  IconButton(
                    onPressed: () => changeState(),
                    icon: Image(
                      image: isSelected
                          ? AssetImage('assets/icons/favorite_selected.png')
                          : AssetImage('assets/icons/favorite.png'),
                    ),
                  )
                ],
              ),
              travellingApp
                  .destinationDescription(widget.destinationDescription)
            ],
          ),
        ],
      ),
    );
  }
}
