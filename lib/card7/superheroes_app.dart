import 'package:cards/card7/ui/superhero_slider_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Card7 extends StatelessWidget {
  const Card7({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Superheroes App",
      theme: ThemeData(
        primaryColor: Colors.white,
        scaffoldBackgroundColor: Colors.white,
        //-------------------
        // App Bar Theme
        //-------------------
        appBarTheme: AppBarTheme(
          color: Colors.white,
          iconTheme: const IconThemeData(color: Colors.black),
          // titleTextStyle: GoogleFonts.spartan(
          //   fontSize: 22,
          //   fontWeight: FontWeight.w600,
          //   color: Colors.black,
          // ),
        ),
        //-------------------
        // Text Theme
        //-------------------
        textTheme: TextTheme(
          headline2: GoogleFonts.spartan(
            fontWeight: FontWeight.w600,
            letterSpacing: -3,
            height: 0.9,
            fontSize: 64,
          ),
          headline5: GoogleFonts.spartan(
            letterSpacing: -1,
            fontWeight: FontWeight.w500,
          ),
        ).apply(
          displayColor: Colors.white,
          bodyColor: Colors.white,
        ),
      ),
      home: const SuperheroSliderPage(),
    );
  }
}
