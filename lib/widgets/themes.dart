import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyTheme {
  static ThemeData lightTheme(BuildContext context) => ThemeData(
    primarySwatch: Colors.indigo,
    fontFamily: GoogleFonts.roboto().fontFamily,

  );
  static ThemeData darkTheme(BuildContext context) => ThemeData(
    brightness: Brightness.dark,

  );
}
