import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travel_application/screen/login_page.dart';

class ElevatedButtonWidget extends StatefulWidget {
  const ElevatedButtonWidget({super.key, required this.labelText});
  final String labelText;

  @override
  State<ElevatedButtonWidget> createState() => _ElevatedButtonWidgetState();
}

class _ElevatedButtonWidgetState extends State<ElevatedButtonWidget> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 45,
      width: 115,
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(elevation: 0),
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const LoginPage(),
                ));
          },
          child: Text(
            widget.labelText,
            style: GoogleFonts.montserrat(fontSize: 14),
          )),
    );
  }
}
