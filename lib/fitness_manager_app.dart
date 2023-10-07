import 'package:fitness_manager/core/styles/theme.dart';
import 'package:fitness_manager/features/home/presentation/home_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FitnessManagerApp extends StatelessWidget {
  const FitnessManagerApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'FitnessManager',
      theme: mainTheme,
      home: const HomePage(),
    );
  }
}
