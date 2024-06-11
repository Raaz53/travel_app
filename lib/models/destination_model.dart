import 'dart:ui';

class DestinationModel {
  final String destinationPicture;
  final String countryTitle;
  final bool isExplore;
  final int index;
  final String description;

  DestinationModel(
      {required this.destinationPicture,
      required this.countryTitle,
      required this.isExplore,
      required this.index,
      required this.description});
}
