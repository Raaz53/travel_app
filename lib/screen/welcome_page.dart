import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travel_application/widget/elevated_button_widget.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const Expanded(
              flex: 2,
              child: Center(
                child: Image(
                  image: AssetImage('assets/images/map-pin.png'),
                  width: 149,
                  height: 149,
                ),
              )),
          Expanded(
              child: Container(
            decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20))),
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Welcome',
                    style: GoogleFonts.montserrat(fontSize: 24),
                  ),
                  Text(
                    "Planning a vacation gives you something to look forward to in the coming year. Whether it's an official family holiday, road trip, solo wellness retreat, or a last-minute long-weekend plan.",
                    style: GoogleFonts.montserrat(fontSize: 12),
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ElevatedButtonWidget(labelText: "Sign In"),
                      ElevatedButtonWidget(labelText: "Sign Up"),
                    ],
                  )
                ],
              ),
            ),
          ))
        ],
      ),
    );
  }
}
