import 'package:fitness_manager/router/router.dart';
import 'package:fitness_manager/theme/theme.dart';
import 'package:flutter/material.dart';

class FitnessManagerApp extends StatelessWidget {
  const FitnessManagerApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FitnessManager',
      theme: darkTheme,
      routes: routes,
    );
  }
}
