import 'package:flutter/material.dart';
import 'package:travel_application/contents/reading_page_content.dart';

import '../widget/bottom_bar_for_navigation.dart';

class ReadingPage extends StatefulWidget {
  const ReadingPage({super.key});

  @override
  State<ReadingPage> createState() => _ReadingPageState();
}

class _ReadingPageState extends State<ReadingPage> {
  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        ReadingPageContent(),
      ],
    );
  }
}
