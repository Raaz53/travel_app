import 'package:flutter/material.dart';
import 'package:travel_application/contents/destination_content_widget.dart';
import 'package:travel_application/widget/bottom_bar_for_navigation.dart';

class DestinationPage extends StatefulWidget {
  const DestinationPage({super.key});

  @override
  State<DestinationPage> createState() => _DestinationPageState();
}

class _DestinationPageState extends State<DestinationPage> {
  @override
  Widget build(BuildContext context) {
    return DestinationContentWidget();
  }
}
