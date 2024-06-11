import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TextTileWidget extends StatefulWidget {
  const TextTileWidget(
      {super.key,
      required this.label,
      required this.icons,
      required this.controller});

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
          padding: const EdgeInsets.symmetric(vertical: 20),
          child: Text(
            widget.label,
            style: GoogleFonts.montserrat(
                fontWeight: FontWeight.w300, fontSize: 13),
          ),
        ),
        TextFormField(
          controller: widget.controller,
          validator: (value) {
            if (value == null || value.isEmpty || value.startsWith(' ')) {
              return "This field can't be empty";
            }
            return null;
          },
          decoration: InputDecoration(
              border: const OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.all(Radius.circular(30))),
              prefixIcon: Icon(
                widget.icons,
                color: const Color.fromRGBO(200, 200, 200, 10),
              )),
        ),
      ],
    );
  }
}
