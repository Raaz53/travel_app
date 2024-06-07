import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StackedImageWidget extends StatefulWidget {
  const StackedImageWidget(
      {super.key,
      required this.destinationPicture,
      required this.country,
      required this.isExplore});
  final Image destinationPicture;
  final String country;

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
              child: widget.destinationPicture),
        ),
        Positioned(
          top: widget.isExplore ? 100 : 150,
          left: 20,
          child: Text(
            widget.country,
            style: GoogleFonts.montserrat(
                fontWeight: FontWeight.w500, fontSize: 13, color: Colors.white),
          ),
        )
      ],
    );
  }
}
