import 'package:flutter/material.dart';
import 'package:shopping/pages/home_page.dart';
import 'package:shopping/pages/login_page.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shopping/utils/routes.dart';
import 'package:shopping/widgets/themes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.light,
      theme:MyTheme.lightTheme(context),
      darkTheme: MyTheme.darkTheme(context),
     debugShowCheckedModeBanner: false,

     routes: {
       "/": (context) => LoginPage(),
       MyRoutes.homeRoute: (context) => HomePage(),
       MyRoutes.loginRoute: (context) => LoginPage()

     },


    );
  }
}

