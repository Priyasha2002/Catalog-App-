import 'package:flutter/material.dart';
import 'package:shopping/pages/home_page.dart';
import 'package:shopping/pages/login_page.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.light,
      theme: ThemeData(
          primarySwatch: Colors.indigo,
              fontFamily: GoogleFonts.sacramento().fontFamily,
      ),

     routes: {
       "/": (context) => LoginPage(),
        "/home": (context) => HomePage(),
       "/login": (context) => LoginPage()

     },


    );
  }
}

