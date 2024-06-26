import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ReadingPageTopWidget extends StatefulWidget {
  const ReadingPageTopWidget({super.key});

  @override
  State<ReadingPageTopWidget> createState() => _ReadingPageTopWidgetState();
}

class _ReadingPageTopWidgetState extends State<ReadingPageTopWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 108,
      width: double.infinity,
      decoration: BoxDecoration(color: Colors.white, boxShadow: [
        BoxShadow(
            color: Colors.black.withOpacity(0.2),
            offset: const Offset(0, 4),
            blurRadius: 10,
            spreadRadius: 2)
      ]),
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 62, left: 120),
            child: Text(
              'TRAVEL NEWS',
              style: GoogleFonts.montserrat(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                  decoration: TextDecoration.underline),
            ),
          ),
        ],
      ),
    );
  }
}
