import 'package:fitness_manager/core/styles/colors.dart';
import 'package:flutter/material.dart';

final mainTheme = ThemeData(
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
  iconTheme: IconThemeData(
    color: AppColor.homePageIcons,
  ),
  textTheme: TextTheme(
    titleMedium: TextStyle(
      color: AppColor.homePageTitle,
      fontWeight: FontWeight.w700,
      fontSize: 30,
    ),
    titleSmall: TextStyle(
      color: AppColor.homePageSubtitle,
      fontWeight: FontWeight.w700,
      fontSize: 20,
    ),
    bodyLarge: TextStyle(
      color: AppColor.homePageBackground,
      fontWeight: FontWeight.w700,
      fontSize: 25,
    ),
    bodyMedium: TextStyle(
      color: AppColor.homePageBackground,
      fontWeight: FontWeight.w500,
      fontSize: 16,
    ),
    bodySmall: TextStyle(
      color: AppColor.homePageBackground,
      fontWeight: FontWeight.w500,
      fontSize: 14,
    ),
    labelLarge: TextStyle(
      color: AppColor.homePageDetail,
      fontWeight: FontWeight.w400,
      fontSize: 20,
    ),
    labelSmall: TextStyle(
      color: AppColor.homePageDetail,
      fontWeight: FontWeight.w400,
      fontSize: 14,
    ),
  ),
);
