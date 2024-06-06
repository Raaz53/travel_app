import 'package:flutter/material.dart';
import 'package:travel_application/styles/font_styling.dart';

class HomeInfoContainerWidget extends StatefulWidget {
  const HomeInfoContainerWidget(
      {super.key, required this.topic, required this.description});
  final String topic;
  final String description;

  @override
  State<HomeInfoContainerWidget> createState() =>
      _HomeInfoContainerWidgetState();
}

class _HomeInfoContainerWidgetState extends State<HomeInfoContainerWidget> {
  FontStyling fontStyling = FontStyling();

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              colors: [
            Colors.grey.withOpacity(0.1),
            Colors.grey.withOpacity(0.06),
            Colors.grey.withOpacity(0.02),
          ])),
      child: Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            fontStyling.contentSubTopic(widget.topic),
            fontStyling.contentDescription(widget.description)
          ],
        ),
      ),
    );
  }
}
