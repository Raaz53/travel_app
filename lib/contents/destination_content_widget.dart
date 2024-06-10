import 'package:flutter/material.dart';

import '../models/travelling_app.dart';

class DestinationContentWidget extends StatefulWidget {
  const DestinationContentWidget({super.key});

  @override
  State<DestinationContentWidget> createState() =>
      _DestinationContentWidgetState();
}

class _DestinationContentWidgetState extends State<DestinationContentWidget> {
  TravellingApp travellingApp = TravellingApp();

  bool isSelected = false;

  void changeState() {
    setState(() {
      isSelected = !isSelected;
    });
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Stack(
      children: [
        Positioned.fill(
          child: travellingApp.place3,
        ),
        Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Flexible(
                    child: travellingApp
                        .destinationTopic(travellingApp.destination3Topic),
                  ),
                  IconButton(
                    onPressed: () => changeState(),
                    icon: Image(
                      image: isSelected
                          ? const AssetImage(
                              'assets/icons/favorite_selected.png')
                          : const AssetImage('assets/icons/favorite.png'),
                    ),
                  )
                ],
              ),
              travellingApp
                  .destinationDescription(travellingApp.destination3Info),
            ],
          ),
        ),
      ],
    );
  }
}
