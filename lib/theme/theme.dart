import 'package:fitness_manager/theme/colors.dart';
import 'package:flutter/material.dart';

final darkTheme = ThemeData(
  pageTransitionsTheme: const PageTransitionsTheme(builders: {
    TargetPlatform.android: CupertinoPageTransitionsBuilder(),
    TargetPlatform.iOS: CupertinoPageTransitionsBuilder(),
  }),
  appBarTheme: AppBarTheme(
    backgroundColor: AppColor.homePageBackground,
    elevation: 0.5,
    centerTitle: true,
    iconTheme: IconThemeData(color: AppColor.homePageIcons),
    titleTextStyle: TextStyle(
        color: AppColor.homePageTitle,
        fontSize: 20,
        fontWeight: FontWeight.w700),
  ),
  scaffoldBackgroundColor: AppColor.homePageBackground,
  colorScheme: ColorScheme.fromSwatch(
    primarySwatch: Colors.blue,
  ),
  textTheme: TextTheme(
    bodyMedium: TextStyle(
      color: AppColor.homePageTitle,
      fontWeight: FontWeight.w500,
      fontSize: 18,
    ),
    labelSmall: TextStyle(
      color: AppColor.homePageSubtitle,
      fontWeight: FontWeight.w700,
      fontSize: 14,
    ),
  ),
);
