import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travel_application/screen/home_page.dart';
import 'package:travel_application/widget/text_tile_widget.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();

  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 120),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Sign In',
                style: GoogleFonts.montserrat(
                    fontSize: 20, fontWeight: FontWeight.w500),
              ),
              const TextTileWidget(
                label: 'Email',
                icons: Icons.person_outline,
              ),
              const TextTileWidget(
                label: 'Password',
                icons: Icons.key_outlined,
                controller: null,
              ),
              Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                    onPressed: () {},
                    child: Text(
                      'Forget Password',
                      style: GoogleFonts.montserrat(fontSize: 14),
                    )),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Checkbox(
                      activeColor: Colors.black54,
                      visualDensity:
                          const VisualDensity(horizontal: -4, vertical: -4),
                      value: isChecked,
                      onChanged: (value) => setState(() {
                            isChecked = value!;
                          })),
                  Text(
                    'Remember me',
                    style: GoogleFonts.montserrat(fontSize: 14),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: SizedBox(
                  width: double.infinity,
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: const Color.fromRGBO(229, 229, 229, 0)),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(elevation: 0),
                      onPressed: () {
                        Navigator.pushAndRemoveUntil(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const HomePage()),
                            (Route<dynamic> route) => false);
                      },
                      child: Text(
                        'Login',
                        style: GoogleFonts.montserrat(fontSize: 18),
                      ),
                    ),
                  ),
                ),
              ),
              Text(
                ' - OR - ',
                style: GoogleFonts.montserrat(fontSize: 14),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 10),
                child: Text(
                  'Sign In With',
                  style: GoogleFonts.montserrat(fontSize: 11),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                      onPressed: () {},
                      icon: const Image(
                        image: AssetImage(
                          'assets/icons/facebook.png',
                        ),
                        height: 40,
                        width: 40,
                      )),
                  IconButton(
                      onPressed: () {},
                      icon: const Image(
                        image: AssetImage(
                          'assets/icons/gmail.png',
                        ),
                        height: 40,
                        width: 40,
                      )),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
