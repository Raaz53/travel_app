import 'package:flutter/material.dart';

import '../models/destination_model.dart';
import '../models/travelling_app.dart';

class DestinationPage extends StatefulWidget {
  const DestinationPage({
    super.key,
    required this.destinationModel,
    required this.favoriteList,
  });
  final DestinationModel destinationModel;

  final List<DestinationModel> favoriteList;

  @override
  State<DestinationPage> createState() => _DestinationPageState();
}

class _DestinationPageState extends State<DestinationPage> {
  TravellingApp travellingApp = TravellingApp();

  bool isSelected = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    if (widget.favoriteList.contains(widget.destinationModel)) {
      isSelected = true;
    }
  }

  void changeState() {
    setState(() {
      isSelected = !isSelected;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              widget.destinationModel.destinationPicture,
              fit: BoxFit.cover,
            ),
          ),
          Positioned.fill(
              child: Container(
            color: Colors.black.withOpacity(0.5),
          )),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Flexible(
                      child: travellingApp.destinationTopic(
                          widget.destinationModel.countryTitle),
                    ),
                    IconButton(
                      onPressed: () {
                        changeState();
                        if (isSelected &&
                            !widget.favoriteList
                                .contains(widget.destinationModel)) {
                          widget.favoriteList.add(widget.destinationModel);
                        } else if (!isSelected &&
                            widget.favoriteList
                                .contains(widget.destinationModel)) {
                          widget.favoriteList.remove(widget.destinationModel);
                        }
                      },
                      icon: Image(
                        image: isSelected
                            ? const AssetImage(
                                'assets/icons/favorite_selected.png')
                            : const AssetImage('assets/icons/favorite.png'),
                      ),
                    )
                  ],
                ),
                travellingApp.destinationDescription(
                    widget.destinationModel.description),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
