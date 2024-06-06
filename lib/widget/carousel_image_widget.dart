import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CarouselImageWidget extends StatefulWidget {
  const CarouselImageWidget(
      {super.key,
      required this.destination,
      required this.country,
      required this.location});
  final Image destination;
  final String country;
  final String location;

  @override
  State<CarouselImageWidget> createState() => _CarouselImageWidgetState();
}

class _CarouselImageWidgetState extends State<CarouselImageWidget> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          child: ClipRRect(
              borderRadius: const BorderRadius.all(Radius.circular(20)),
              child: widget.destination),
        ),
        Positioned(
          top: 100,
          left: 20,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                widget.country,
                style: GoogleFonts.montserrat(
                    fontWeight: FontWeight.w500,
                    fontSize: 13,
                    color: Colors.white),
              ),
              Text(
                widget.location,
                style: GoogleFonts.montserrat(
                    fontWeight: FontWeight.w500,
                    fontSize: 13,
                    color: Colors.white),
              ),
            ],
          ),
        )
      ],
    );
  }
}
