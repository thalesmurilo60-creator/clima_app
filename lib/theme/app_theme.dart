import 'package:flutter/material.dart';

class AppTheme {
  static final ThemeData tema = ThemeData(
    primarySwatch: Colors.blue,
    scaffoldBackgroundColor: Colors.white,

    appBarTheme: const AppBarTheme(
      centerTitle: true,
      backgroundColor: Color.fromARGB(255, 3, 78, 139),
      foregroundColor: Colors.white,
    ),
  );
}
