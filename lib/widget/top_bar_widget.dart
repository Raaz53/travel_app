import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TopBarWidget extends StatefulWidget {
  const TopBarWidget({super.key});

  @override
  State<TopBarWidget> createState() => _TopBarWidgetState();
}

class _TopBarWidgetState extends State<TopBarWidget> {
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: Container(
        decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(30),
                bottomRight: Radius.circular(30))),
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    height: 44,
                    width: 44,
                    child: IconButton(
                      onPressed: () {},
                      icon: Image.asset('assets/icons/dropdownbutton.png'),
                    ),
                  ),
                  Container(
                    height: 44,
                    width: 44,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(70),
                        color: Colors.red,
                        image: const DecorationImage(
                          image: AssetImage('assets/images/profile.jpeg'),
                        )),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              TextFormField(
                minLines: 1,
                decoration: InputDecoration(
                    hintText: 'Search',
                    filled: true,
                    fillColor: Colors.grey[200],
                    border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(10)),
                    suffixIcon: Icon(
                      Icons.search_rounded,
                      color: Colors.grey[350],
                    )),
                style: GoogleFonts.montserrat(fontSize: 18),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
