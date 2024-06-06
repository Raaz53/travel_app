import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';

class FontStyling {
  Text contentTopic(String text) {
    Text holding = Text(
      text,
      style: GoogleFonts.montserrat(fontSize: 18, fontWeight: FontWeight.w600),
    );
    return holding;
  }

  Text destinationTopic(String text) {
    Text holding = Text(
      text,
      style: GoogleFonts.montserrat(fontSize: 24, fontWeight: FontWeight.w600),
    );
    return holding;
  }

  Text contentDescription(String text) {
    Text holding = Text(
      text,
      style: GoogleFonts.montserrat(fontSize: 9),
    );
    return holding;
  }

  Text contentSubTopic(String text) {
    Text holding = Text(
      text,
      style: GoogleFonts.montserrat(fontSize: 11, fontWeight: FontWeight.w500),
    );
    return holding;
  }
}
