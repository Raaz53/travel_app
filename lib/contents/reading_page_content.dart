import 'package:flutter/material.dart';
import 'package:travel_application/models/travelling_app.dart';
import 'package:travel_application/widget/reading_page_top_widget.dart';

class ReadingPageContent extends StatefulWidget {
  const ReadingPageContent({super.key});

  @override
  State<ReadingPageContent> createState() => _ReadingPageContentState();
}

class _ReadingPageContentState extends State<ReadingPageContent> {
  TravellingApp travellingApp = TravellingApp();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const ReadingPageTopWidget(),
        Expanded(
            child: Padding(
          padding: EdgeInsets.all(20),
          child: SingleChildScrollView(
            child: Column(
              children: [
                travellingApp
                    .readingPageTopicFont(travellingApp.readingPageTitle),
                travellingApp.readingPageDescriptionFont(
                    travellingApp.readingPageDescription),
              ],
            ),
          ),
        ))
      ],
    );
  }
}
