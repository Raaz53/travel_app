import 'dart:ui';

class DestinationModel {
  final String destinationPicture;
  final String countryTitle;
  final int? index;
  final String description;

  DestinationModel(
      {required this.destinationPicture,
      required this.countryTitle,
      this.index,
      required this.description});
}
