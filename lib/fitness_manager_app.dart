import 'package:fitness_manager/core/utils/router/router.dart';
import 'package:fitness_manager/core/styles/theme.dart';
import 'package:flutter/material.dart';

class FitnessManagerApp extends StatelessWidget {
  const FitnessManagerApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FitnessManager',
      theme: mainTheme,
      routes: routes,
    );
  }
}
