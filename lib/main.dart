import 'package:flutter/material.dart';
import 'package:travel_application/screen/home_page.dart';
import 'package:travel_application/screen/login_page.dart';
import 'package:travel_application/screen/welcome_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
          scaffoldBackgroundColor: const Color.fromARGB(255, 248, 248, 248)),
      home: const WelcomePage(),
    );
  }
}
