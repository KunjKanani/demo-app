import 'package:demo_app/view/homepage/home_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: GoogleFonts.rajdhani().fontFamily,
      ),
      home: const Scaffold(
        backgroundColor: Color(0xFF22314D),
        body: HomePage(),
      ),
    );
  }
}
