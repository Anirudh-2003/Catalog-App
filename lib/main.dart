import 'package:flutter/material.dart';
import 'package:untitled/Screens/HomePage.dart';
import 'package:untitled/Screens/LoginPage.dart';
import 'package:google_fonts/google_fonts.dart';
import 'Utils/Route.dart';

void main()
{
  runApp(untitled());
}
class untitled extends StatelessWidget {
  const untitled({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.light,
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        primaryTextTheme: GoogleFonts.latoTextTheme(),
      ),
      initialRoute: "/home",
      routes: {
        MyRoutes.homeRoute: (context) => HomePage(),
        MyRoutes.loginRoute: (context) => LoginPage(),
      },
    );
  }
}
