import 'package:flutter/material.dart';

final darkTheme = ThemeData(
  pageTransitionsTheme: const PageTransitionsTheme(builders: {
    TargetPlatform.android: CupertinoPageTransitionsBuilder(),
    TargetPlatform.iOS: CupertinoPageTransitionsBuilder(),
  }),
  appBarTheme: const AppBarTheme(
    backgroundColor: Color(0xFF202020),
    elevation: 0.5,
    centerTitle: true,
    iconTheme: IconThemeData(color: Colors.white),
    titleTextStyle: TextStyle(
        color: Colors.white, fontSize: 20, fontWeight: FontWeight.w700),
  ),
  scaffoldBackgroundColor: const Color(0xFF202020),
  colorScheme: ColorScheme.fromSwatch(
    primarySwatch: Colors.amber,
  ),
  textTheme: const TextTheme(
    bodyMedium: TextStyle(
      color: Colors.white,
      fontWeight: FontWeight.w500,
      fontSize: 18,
    ),
    labelSmall: TextStyle(
      color: Color.fromARGB(255, 196, 196, 196),
      fontWeight: FontWeight.w700,
      fontSize: 14,
    ),
  ),
);
