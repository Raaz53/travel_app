import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TextTileWidget extends StatefulWidget {
  const TextTileWidget({super.key, required this.label, required this.icons, required this.controller});

  final String label;
  final IconData icons;
  final TextEditingController controller;

  @override
  State<TextTileWidget> createState() => _TextTileWidgetState();
}

class _TextTileWidgetState extends State<TextTileWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(vertical: 20),
          child: Text(
            widget.label,
            style: GoogleFonts.montserrat(
                fontWeight: FontWeight.w300, fontSize: 13),
          ),
        ),
        Container(
          width: double.infinity,
          height: 40,
          decoration: ShapeDecoration(
              color: Colors.white,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              shadows: const [
                BoxShadow(
                  color: Color(0x19000000),
                  blurRadius: 5,
                  offset: Offset(2, 2),
                  spreadRadius: 0,
                )
              ]),
          child: TextFormField(
            controller: widget.controller,
            validator: ,
            decoration: InputDecoration(
                border: InputBorder.none,
                prefixIcon: Icon(
                  widget.icons,
                  color: const Color.fromRGBO(200, 200, 200, 10),
                )),
          ),
        ),
      ],
    );
  }
}
