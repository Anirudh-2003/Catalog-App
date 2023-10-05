import 'package:flutter/material.dart';
import 'package:untitled/Screens/HomePage.dart';

void main()
{
  runApp(untitled());
}
class untitled extends StatelessWidget {
  const untitled({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
      themeMode: ThemeMode.dark,
      theme: ThemeData(
        brightness: Brightness.dark,
      ),
    );
  }
}
