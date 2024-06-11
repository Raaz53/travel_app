import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travel_application/models/destination_model.dart';

class StackedImageWidget extends StatefulWidget {
  const StackedImageWidget(
      {super.key, required this.isExplore, this.destinationModel});

  final DestinationModel? destinationModel;
  final bool isExplore;

  @override
  State<StackedImageWidget> createState() => _StackedImageWidgetState();
}

class _StackedImageWidgetState extends State<StackedImageWidget> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          height: widget.isExplore ? 159 : 200,
          width: widget.isExplore ? 238 : 300,
          child: ClipRRect(
              borderRadius: const BorderRadius.all(Radius.circular(20)),
              child: Image.asset(
                widget.destinationModel!.destinationPicture,
                fit: BoxFit.cover,
              )),
        ),
        Positioned(
          top: widget.isExplore ? 100 : 150,
          left: 20,
          child: Text(
            widget.destinationModel!.countryTitle,
            style: GoogleFonts.montserrat(
                fontWeight: FontWeight.w500, fontSize: 13, color: Colors.white),
          ),
        )
      ],
    );
  }
}
